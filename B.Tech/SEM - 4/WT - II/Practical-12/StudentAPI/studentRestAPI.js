const mongoose = require('mongoose');
const express = require('express');
const bodyParser = require('body-parser');

const Student = require('./Student');

const url = "mongodb://localhost:27017/WT-ll";

mongoose.connect(url).then(()=>{
    console.log("Connected to database");
    
    const app = express();
    app.use(bodyParser.json());

    //getAll
    app.get("/students",async(req,res)=>{
        const data = await Student.find();
        res.send(data);
    });

    //getByID
    app.get("/student/:id",async(req,res)=>{
        const data = await Student.findOne({_id : req.params.id});
        res.send(data);
    });

    //insert
    app.post("/student",async(req,res)=>{
        const obj = new Student({
            id : req.body._id,
            name : req.body.name,
            language : req.body.language,
            bio : req.body.bio,
            spi : req.body.spi,
        })
        const data = await obj.save();
        res.send(data);        
    })

    //update
    app.patch("/student/:id",async(req,res)=>{
        const student = await Student.findOne({_id:req.params.id});
        student.id = req.body._id;
        student.name = req.body.name;
        student.language = req.body.language;
        student.bio = req.body.bio;
        student.spi = req.body.spi;

        const data = await student.save();
        res.send(data);        
    })

    //delete
    app.delete("/student/:id",async(req,res)=>{
        const data = await Student.deleteOne({_id : req.params.id});
        res.send(data);
    });

    app.listen(3000,()=>{
        console.log("Server started at 3000");
    })
});