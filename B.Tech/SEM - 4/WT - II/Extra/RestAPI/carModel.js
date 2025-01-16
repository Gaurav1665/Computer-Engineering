const mongoose = require('mongoose');
const express = require('express');
const app = express();

const schema = mongoose.Schema({
    _id: Number,
    carName: String,
    carModel: String,
    carType: String,
    carColor: String,
    carPrice: Number,
    carAvg: Number,
    carComplany: String,
});
module.exports = mongoose.model("Car", schema);