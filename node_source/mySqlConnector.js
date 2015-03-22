var mysql      = require('mysql');
var passport = require('passport');
var bcrypt   = require('bcrypt-nodejs');

var pool  = mysql.createPool({
  host     : 'localhost',
  user     : 'root',
  password : 'ug3uwzyq',
  database : 'leisure'
});

function query(statement, request, response) {
	pool.query(statement, function(err, rows, fields) {
	    if (err) {
            log_error(JSON.stringify(err),statement, 0);
            response.write("Error");
        }
        else if (rows && rows[0]) {
            response.write(JSON.stringify(rows[0]));
        } else {
            response.write("OK");
        }

		response.end();
	    
	});

    var user_id = request.user ? request.user.user_id : null;
    var ip = request.headers['x-forwarded-for'] || request.connection.remoteAddress;
    log_procedure_call(statement, user_id, ip);
}

function check_auth_user(req,email,password,done){
    var hashedPassword = generateHash(password);
    var ip = req.headers['x-forwarded-for'] || req.connection.remoteAddress;
    var sql="CALL get_user("+ mysql.escape(email) +");";
    log_procedure_call(sql, null, ip);
    pool.query(sql,
        function (err,results) {
            if (err) {
                log_error(JSON.stringify(err), sql, 0);
                return done (err);
            }

            var rows = results[0];
            if(rows.length > 0 && bcrypt.compareSync(password, rows[0].password)){
                var res=rows[0];
                return done(null, res);
            }else{
                return done(null, false, { message : 'Invalid e-mail address or password' });

            }

        });
}

function add_new_user(req, email, password, done, ip) {
    process.nextTick(function() {
        var sql="CALL get_user(" + mysql.escape(email) + ");";
        var ip = req.headers['x-forwarded-for'] || req.connection.remoteAddress;
        log_procedure_call(sql, null, ip);
        pool.query(sql,
            function (err,results) {
                if (err) {
                    log_error(JSON.stringify(err), sql, 0);
                    return  done(err);
                }

                var rows = results[0];
                if(rows.length > 0){
                    return done(null, false, { message : 'User already exists' });
                } else {
                    var hashedPassword = generateHash(password);
                    var insertSql = "CALL add_user(" + mysql.escape(req.body.displayName) + "," +
                                                                            mysql.escape(email) + "," +
                                                                            mysql.escape(hashedPassword) + "," +
                                                                            "NULL" + ");";


                    log_procedure_call(insertSql, null, ip);
                    pool.query(insertSql,
                        function (err,results) {
                            if (err) {
                                log_error(JSON.stringify(err),insertSql, email);
                                return  done(err);
                            }
                            var newUser = {user_id: results[0][0].last_insert_id, email:email, password:password, display_name:req.body.displayName};
                            return done(null, newUser);
                        });
                }
            });
     });
}

function get_user_by_profile(req, profile_id,callback){
    var sql="CALL get_user_by_profile(" + mysql.escape(profile_id) + ");";
    pool.query(sql, callback);
    var user_id = req.user ? req.user.user_id : null;
    var ip = req.headers['x-forwarded-for'] || req.connection.remoteAddress;
    log_procedure_call(sql, user_id, ip);
}

function merge_user(req, email, profile_id, token, first_name, last_name, display_name, fb_link, callback) {
    var sql="CALL merge_fb_user("+ mysql.escape(email) + ","
                                 + mysql.escape(profile_id) + ","
                                 + mysql.escape(token) + ","
                                 + mysql.escape(first_name) + ","
                                 + mysql.escape(last_name) + ","
                                 + mysql.escape(display_name) + ","
                                 + mysql.escape(fb_link) + ");";
    pool.query(sql, callback);
    var ip = req.headers['x-forwarded-for'] || req.connection.remoteAddress;
    log_procedure_call(sql, null, ip);
}

function log_error(error_text, debug_data, user){
    var err = error_text.substring(0, 999);
    var data = debug_data.substring(0, 999);
    var sql="CALL log_error("+ mysql.escape(err) + ","
                                + mysql.escape(data) + ","
                                + mysql.escape(user) +  ");";

    pool.query(sql, function (err,results) {
        if (err) {
            console.log(JSON.stringify(err));
        }
    });
}

function log_procedure_call(statement, user_id, user_ip) {
    var proc_name = statement.substring(5, statement.indexOf('('));
    var data = statement.substring(0, 999);
    var sql="CALL log_procedure_call("+ mysql.escape(proc_name) + ","
        + mysql.escape(data) + ","
        + mysql.escape(user_id) + ","
        + mysql.escape(user_ip) + ");";

    pool.query(sql, function (err,results) {
        if (err) {
            //console.log(JSON.stringify(err));
        }
    });
}


var generateHash = function(password) {
    return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);
};

exports.query = query;
exports.check_auth_user = check_auth_user;
exports.add_new_user = add_new_user;
exports.get_user_by_profile = get_user_by_profile;
exports.merge_user = merge_user;
exports.log_error = log_error;
exports.log_procedure_call = log_procedure_call;
