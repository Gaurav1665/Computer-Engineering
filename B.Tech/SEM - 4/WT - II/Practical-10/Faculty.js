const mongoose = require('mongoose');
const express = require('express');
const app = express();

const schema = mongoose.Schema({
    _id : Number,
    FacultyName : String,
    FacultyImage : String,
    FacultyInitial : String,
    FacultyDescription : String,
    FacultyDateOfBirth : Date,
});

mongoose.connect("mongodb://localhost:27017/WT-ll").then(()=>{
    console.log("Connected successfully");
    
})

// module.exports = mongoose.model("Faculty", schema);