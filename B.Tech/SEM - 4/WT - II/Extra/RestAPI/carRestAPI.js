const mongoose = require('mongoose');
const express = require('express');
const bodyParser = require('body-parser');

const Car = require('./carModel');

const url = "mongodb://localhost:27017/WT-ll";

mongoose.connect(url).then(()=>{
    console.log("Connected to database");
    
    const app = express();
    app.use(bodyParser.json());

    //getAll
    app.get("/cars",async(req,res)=>{
        const data = await Car.find();
        res.send(data);
    });

    //getByID
    app.get("/car/:id",async(req,res)=>{
        const data = await Car.findOne({_id : req.params.id});
        res.send(data);
    });

    //insert
    app.put("/car",async(req,res)=>{
        const obj = new Car({
            id: req.body._id,
            carName: req.body.carName,
            carModel: req.body.carModel,
            carType: req.body.carType,
            carColor: req.body.carColor,
            carPrice: req.body.carPrice,
            carAvg: req.body.carAvg,
            carComplany: req.body.carComplany,
        })
        const data = await obj.save();
        res.send(data);        
    })

    //update
    app.patch("/car/:id",async(req,res)=>{
        const car = await Car.findOne({_id:req.params.id});
        car.id = req.body._id;
        car.carName = req.body.carName;
        car.carModel = req.body.carModel;
        car.carType = req.body.carType;
        car.carColor = req.body.carColor;
        car.carPrice = req.body.carPrice;
        car.carAvg = req.body.carAvg;
        car.carComplany = req.body.carComplany;

        const data = await car.save();
        res.send(data);        
    })

    //delete
    app.delete("/car/:id",async(req,res)=>{
        const data = await Car.deleteOne({_id : req.params.id});
        res.send(data);
    });

    app.listen(3000,()=>{
        console.log("Server started at 3000");
    })
});