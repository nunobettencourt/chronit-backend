var db = require('../dbconnection');

var Competition={

    getAllCompetitions:function(callback){

        return db.query("Select * from competition",callback);

    },

    getCompetitionById:function(id,callback){

        return db.query("select * from competition where id=?",[id],callback);
    },

    addCompetition:function(Competition,callback){
        console.log("inside service");
        console.log(Competition.id);
        return db.query(
            "INSERT INTO competition(identifier, title, description, status, time_create) values (?,?,?,?,?)",
            [
                Competition.identifier,
                Competition.title,
                Competition.description,
                Competition.status,
                Competition.time_create
            ],
            callback
        );
    },

    deleteCompetition:function(id,callback){
        return db.query("delete from competition where id=?",[id],callback);
    },

    updateCompetition:function(id,Competition,callback){
        return  db.query("update competition set Title=?,Status=? where Id=?",[Competition.Title,Competition.Status,id],callback);
    }

};

module.exports=Competition;