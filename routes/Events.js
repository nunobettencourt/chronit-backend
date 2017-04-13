var express = require('express');
var router = express.Router();
var Event = require('../models/Event');
var Promise = require('promise');

router.get('/:id?',function(req,res,next){

    if(req.params.id){

        Event.getEventById(req.params.id,function(err,rows){

            if(err)
            {
                res.json(err);
            }
            else{
                res.json(rows);
            }
        });
    }
    else{

        Event.getAllEvents(function(err,rows){

            if(err)
            {
                res.json(err);
            }
            else
            {
                res.json(rows);
            }

        });
    }
});

// calls Event.getEventTeams passing event ID
router.get('/eventTeams/:id?', function (req, res) {

    Event.getEventTeams(req.params.id, function (err,rows) {
        if(err)
        {
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
});


// calls getEventTeams passing event ID and filters all with status above 1
router.get('/qualifiedTeams/:id?', function (req, res) {
    Event.getEventTeams(req.params.id, function (err, rows ) {
        if(err)
        {
            res.json(err);
        }
        else{

            var filtered = rows.filter(function (row) {
                return row.teamStatus > 1;
            });

            res.json(filtered);
        }
    })
});

// calls Event.getEventStages passing event ID
router.get('/eventStages/:id', function (req, res) {

    Event.getEventStages(req.params.id, function (err, rows) {
        if(err)
        {
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
});


router.get('/eventTest/:id', function (req, res) {

    //GET event details
    var event = new Promise( function (resolve, reject) {
        Event.getEventById(req.params.id, function (err, rows) {
            if (err) reject(err);
            else resolve(rows);
        });
    });

    //GET event teams
    var eventTeams = new Promise( function (resolve, reject) {
        Event.getEventTeams(req.params.id, function (err, rows) {
            if (err) reject(err);
            else resolve(rows);
        });
    });

    //GET event stages
    var eventStages = new Promise( function (resolve, reject) {
        Event.getEventStages(req.params.id, function (err, rows) {
            if (err) reject(err);
            else resolve(rows);
        });
    });

    //Merges everything into a single object and returns it
    Promise.all([event, eventTeams, eventStages]).then(function (values) {
        var eventData = {
            details: values[0][0],
            teams: values[1],
            stages: values[2]
        };

        res.json(eventData);
    });

});


router.post('/',function(req,res,next){

    Event.addEvent(req.body,function(err,count){

        //console.log(req.body);
        if(err)
        {
            res.json(err);
        }
        else{
            res.json(req.body);//or return count for 1 & 0
        }
    });
});

router.post('/:id',function(req,res,next){
    Event.deleteAll(req.body,function(err,count){
        if(err)
        {
            res.json(err);
        }
        else
        {
            res.json(count);
        }
    });
});

router.delete('/:id',function(req,res,next){

    Event.deleteEvent(req.params.id,function(err,count){

        if(err)
        {
            res.json(err);
        }
        else
        {
            res.json(count);
        }

    });
});

router.put('/:id',function(req,res,next){

    Event.updateEvent(req.params.id,req.body,function(err,rows){

        if(err)
        {
            res.json(err);
        }
        else
        {
            res.json(rows);
        }
    });
});

module.exports=router;