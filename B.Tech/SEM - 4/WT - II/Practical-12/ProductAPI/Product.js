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
module.exports = mongoose.model("Product", schema);