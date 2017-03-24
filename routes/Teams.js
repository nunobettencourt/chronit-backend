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

module.exports=router;