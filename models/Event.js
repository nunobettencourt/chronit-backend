var db = require('../dbconnection');

var Event={

    getAllEvents:function(callback){

        return db.query("Select * from event",callback);

    },

    getEventById:function(id,callback){

        return db.query("select * from event where id=?",[id],callback);
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

module.exports=Event;