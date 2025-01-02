const mongoose = require('mongoose');
const express = require('express');
const bodyParser = require('body-parser');

const Product = require('./Product');

const url = "mongodb://localhost:27017/WT-ll";

mongoose.connect(url).then(()=>{
    console.log("Connected to database");
    
    const app = express();
    app.use(bodyParser.json());

    //getAll
    app.get("/product",async(req,res)=>{
        const data = await Product.find();
        res.send(data);
    });

    //getByID
    app.get("/products/:id",async(req,res)=>{
        const data = await Product.findOne({_id : req.params.id});
        res.send(data);
    });

    //insert
    app.put("/product",async(req,res)=>{
        const obj = new Product({
            id: req.body._id,
            createdAt: req.body.createdAt,
            LaptopName: req.body.LaptopName,
            LaptopImage: req.body.LaptopImage,
            LaptopPrice: req.body.LaptopPrice,
            LaptopCompany: req.body.LaptopCompany,
            LaptopRamSize: req.body.LaptopRamSize,
            LaptopSSDSize: req.body.LaptopSSDSize,
        })
        const data = await obj.save();
        res.send(data);        
    })

    //update
    app.patch("/product/:id",async(req,res)=>{
        const product = await Product.findOne({_id:req.params.id});
        product.id = req.body._id;
        product.createdAt = req.body.createdAt;
        product.LaptopName = req.body.LaptopName;
        product.LaptopImage = req.body.LaptopImage;
        product.LaptopPrice = req.body.LaptopPrice;
        product.LaptopCompany = req.body.LaptopCompany;
        product.LaptopRamSize = req.body.LaptopRamSize;
        product.LaptopSSDSize = req.body.LaptopSSDSize;

        const data = await product.save();
        res.send(data);        
    })

    //delete
    app.delete("/product/:id",async(req,res)=>{
        const data = await Product.deleteOne({_id : req.params.id});
        res.send(data);
    });

    app.listen(3000,()=>{
        console.log("Server started at 3000");
    })
});