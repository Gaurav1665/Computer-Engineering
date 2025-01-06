const mongoose = require('mongoose');
const express = require('express');
const app = express();

const schema = mongoose.Schema({
    id : String,
    name : String,
    language : String,
    bio : String,
    spi : Number,
});

mongoose.connect("mongodb://localhost:27017/WT-ll").then(()=>{
    console.log("Connected successfully");
    
})

// module.exports = mongoose.model("Student", schema);