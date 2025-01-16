const mongoose = require('mongoose');
const express = require('express');
const app = express();

const schema = mongoose.Schema({
    _id: Number,
    bookName: String,
    bookType: String,
    bookAuth: String,
    bookPrice: String,
});
module.exports = mongoose.model("Book", schema);