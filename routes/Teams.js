var express = require('express');
var router = express.Router();
var Team = require('../models/Team');

router.get('/:id?',function(req,res,next){

    if(req.params.id){

        Team.getTeamById(req.params.id,function(err,rows){

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

        Team.getAllTeams(function(err,rows){

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

router.get('/members/:id?',function(req,res,next){

    if(req.params.id){

        Team.getTeamMembers(req.params.id,function(err,rows){

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
        res.json('Team ID required');
    }
});

module.exports=router;