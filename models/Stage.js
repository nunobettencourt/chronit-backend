var db = require('../dbconnection');

var Stage = {

    getAllStages:function(callback){

        return db.query(
            "SELECT " +
            "stage.id AS stage_id, " +
            "identifier, " +
            "reference, " +
            "pe_number, " +
            "stage.title AS stage_title, " +
            "stage.description AS stage_description, " +
            "distance, " +
            "average_speed, " +
            "time, " +
            "time_start, " +
            "time_end, " +
            "stage.status as stage_status, " +
            "stage_type.short AS stage_type_short, " +
            "stage_type.title AS stage_type_tile, " +
            "stage_category.short AS stage_category_short, " +
            "stage_category.title AS stage_category_title " +
            "FROM stage " +
            "INNER JOIN stage_type ON stage.id_stage_type = stage_type.id " +
            "INNER JOIN stage_category ON stage_type.id_stage_category = stage_category.id",
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