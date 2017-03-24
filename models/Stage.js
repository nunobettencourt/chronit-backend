var db = require('../dbconnection');

var Stage = {

    getAllStages:function(callback){

        return db.query(
            "SELECT * FROM stage " +
            "INNER JOIN stage_type ON stage.id_stage_type = stage_type.id",
            callback
        );

    },

    getStageById:function(id,callback){

        return db.query("select * from stage where id=?",[id],callback);
    },

    addStage:function(Stage,callback){
        console.log("inside service");
        console.log(Stage.id);

        //TODO Update query to reflect Stage table - insert event relation in table event_stage

        // return db.query(
        //     "INSERT INTO stage(id_rally, identifier, reference, status, time_create, time_start, time_end) values (?,?,?,?,?,?,?)",
        //     [
        //         Stage.id_rally,
        //         Stage.identifier,
        //         Stage.reference,
        //         Stage.status,
        //         Stage.time_create,
        //         Stage.time_start,
        //         Stage.time_end
        //     ],
        //     callback
        // );
    },

    deleteStage:function(id,callback){
        return db.query("delete from stage where id=?",[id],callback);
    },

    updateStage:function(id,Stage,callback){
        return  db.query("update stage set Title=?,Status=? where Id=?",[Stage.Title,Stage.Status,id],callback);
    }

};

module.exports = Stage;