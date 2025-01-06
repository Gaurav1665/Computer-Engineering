const mongoose = require('mongoose');
const express = require('express');
const bodyParser = require('body-parser');

const Faculty = require('./Faculty');

const url = "mongodb://localhost:27017/WT-ll";

mongoose.connect(url).then(()=>{
    console.log("Connected to database");
    
    const app = express();
    app.use(bodyParser.json());

    //getAll
    app.get("/faculties",async(req,res)=>{
        const data = await Faculty.find();
        res.send(data);
    });

    //getByID
    app.get("/faculty/:id",async(req,res)=>{
        const data = await Faculty.findOne({_id : req.params.id});
        res.send(data);
    });

    //insert
    app.post("/faculty",async(req,res)=>{
        const obj = new Faculty({
            _id : req.body._id,
            FacultyName : req.body.FacultyName,
            FacultyImage : req.body.FacultyImage,
            FacultyInitial : req.body.FacultyInitial,
            FacultyDescription : req.body.FacultyDescription,
            FacultyDateOfBirth : req.body.FacultyDateOfBirth
        })
        const data = await obj.save();
        res.send(data);        
    })

    //update
    app.patch("/faculty/:id",async(req,res)=>{
        const faculty = await Faculty.findOne({_id:req.params.id});
        faculty._id = req.body._id;
        faculty.FacultyName = req.body.FacultyName;
        faculty.FacultyImage = req.body.FacultyImage;
        faculty.FacultyInitial = req.body.FacultyInitial;
        faculty.FacultyDescription = req.body.FacultyDescription;
        faculty.FacultyDateOfBirth = req.body.FacultyDateOfBirth;
        
        const data = await faculty.save();
        res.send(data);        
    })

    //delete
    app.delete("/faculty/:id",async(req,res)=>{
        const data = await Faculty.deleteOne({_id : req.params.id});
        res.send(data);
    });

    app.listen(3000,()=>{
        console.log("Server started at 3000");
    })
});