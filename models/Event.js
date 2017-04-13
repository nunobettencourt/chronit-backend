var db = require('../dbconnection');

var Event={

    getAllEvents:function(callback){

        return db.query("Select * from event",callback);

    },

    getEventById:function(id,callback){

        return db.query("select * from event where id=?",[id],callback);
    },

    getEventTeams: function(id, callback) {

      var query = ("SELECT " +
        "event_vehicle.id_team, " +
        "team.title as team, " +
        "Pilot.name AS pilot, " +
        "coPilot.name AS coPilot, " +
        "vehicle.title AS vehicle, " +
        "event_vehicle.cl, " +
        "event_vehicle.grp, " +
        "event_team.status as teamStatus " +
        "FROM `event_vehicle` " +
        "INNER JOIN event_team ON event_vehicle.id_team = event_team.id_team " +
        "INNER JOIN team on event_vehicle.id_team = team.id " +
        "INNER JOIN vehicle on event_vehicle.id_vehicle = vehicle.id " +
        "INNER JOIN person AS Pilot on event_vehicle.id_pilot = Pilot.id " +
        "INNER JOIN person AS coPilot on event_vehicle.id_copilot = coPilot.id " +
        "WHERE event_vehicle.id_event = ?");

      return db.query(query, [id], callback);
    },

    //gets event_id and return all event stages
    getEventStages: function (id, callback) {

      var query = ("SELECT " +
        "stage.id as stageID, " +
        "stage.identifier as stageIdentifier, " +
        "stage.reference as stageReference, " +
        "stage.pe_number as peNumber, " +
        "stage.title as stageTitle, " +
        "stage.distance as stageDistance, " +
        "stage.average_speed as stageAverageSpeed, " +
        "stage.time as stageTime, " +
        "stage.time_start as stageTimeStart, " +
        "stage.time_end as stageTimeEnd, " +
        "stage_type.short as stageTypeShort, " +
        "stage_type.title as stageType, " +
        "stage_category.short as stageCategoryShort, " +
        "stage_category.title as stageCategory, " +
        "event_stage.position as stagePosition " +
        "FROM event_stage " +
        "INNER JOIN stage on event_stage.id_stage = stage.id " +
        "INNER JOIN stage_type on stage.id_stage_type = stage_type.id " +
        "INNER JOIN stage_category on stage_type.id_stage_category = stage_category.id " +
        "WHERE event_stage.id_event = ? " +
        "ORDER BY stagePosition");

        return db.query(query, [id], callback);
    },

    addEvent:function(Event,callback){
        console.log("inside service");
        console.log(Event.id);
        return db.query(
            "INSERT INTO event(id_rally, identifier, reference, status, time_create, time_start, time_end) values (?,?,?,?,?,?,?)",
            [
                Event.id_rally,
                Event.identifier,
                Event.reference,
                Event.status,
                Event.time_create,
                Event.time_start,
                Event.time_end
            ],
            callback
        );
    },

    deleteEvent:function(id,callback){
        return db.query("delete from event where id=?",[id],callback);
    },

    updateEvent:function(id,Event,callback){
        return  db.query("update event set Title=?,Status=? where Id=?",[Event.Title,Event.Status,id],callback);
    }

};

module.exports = Event;