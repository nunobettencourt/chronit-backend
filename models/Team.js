var db = require('../dbconnection');

var Team = {

    getAllTeams: function(callback){

        return db.query("SELECT * FROM team", callback);

    },

    getTeamById: function(id,callback){

        return db.query("SELECT * FROM team where id = ?",[id],callback);
    },

    getTeamMembers: function (id, callback) {

        return db.query(
            "SELECT " +
            "person.id AS person_id, " +
            "person.name As person_name, " +
            "team_member_role.title as team_role" +
            "FROM team_member " +
            "INNER JOIN person ON team_member.id_person = person.id " +
            "INNER JOIN team_member_role ON team_member.id_team_member_role = team_member_role.id " +
            "WHERE person.status = 5 " +
            "AND team.id = ?", [id],
            callback
        );
    },

};

module.exports = Team;