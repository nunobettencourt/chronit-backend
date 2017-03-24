var db = require('../dbconnection');

var Team = {

    getAllTeams:function(callback){

        return db.query("SELECT * FROM team", callback);

    },

    getTeamById:function(id,callback){

        return db.query("SELECT * FROM team where id = ?",[id],callback);
    },

};

module.exports = Team;