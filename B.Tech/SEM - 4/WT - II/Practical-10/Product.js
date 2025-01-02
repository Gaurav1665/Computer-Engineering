const mongoose = require('mongoose');
const express = require('express');
const app = express();

const schema = mongoose.Schema({
    id: Number,
    createdAt: Date,
    LaptopName: String,
    LaptopImage: String,
    LaptopPrice: Number,
    LaptopCompany: String,
    LaptopRamSize: Number,
    LaptopSSDSize: Number,
});

mongoose.connect("mongodb://localhost:27017/WT-ll").then(()=>{
    console.log("Connected successfully");
    
})

// module.exports = mongoose.model("Product", schema);