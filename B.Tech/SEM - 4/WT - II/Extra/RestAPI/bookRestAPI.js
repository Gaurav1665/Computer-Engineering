const mongoose = require('mongoose');
const express = require('express');
const bodyParser = require('body-parser');

const Book = require('./bookModel');

const url = "mongodb://localhost:27017/WT-ll";

mongoose.connect(url).then(()=>{
    console.log("Connected to database");
    
    const app = express();
    app.use(bodyParser.json());

    //getAll
    app.get("/books",async(req,res)=>{
        const data = await Book.find();
        res.send(data);
    });

    //getByID
    app.get("/book/:id",async(req,res)=>{
        const data = await Book.findOne({_id : req.params.id});
        res.send(data);
    });

    //insert
    app.put("/book",async(req,res)=>{
        const obj = new Book({
            id: req.body._id,
            bookName: req.body.bookName,
            bookType: req.body.bookType,
            bookAuth: req.body.bookAuth,
            bookPrice: req.body.bookPrice,
        })
        const data = await obj.save();
        res.send(data);        
    })

    //update
    app.patch("/book/:id",async(req,res)=>{
        const book = await Book.findOne({_id:req.params.id});
        book.id = req.body._id;
        book.bookName = req.body.bookName;
        book.bookType = req.body.bookType;
        book.bookAuth = req.body.bookAuth;
        book.bookPrice = req.body.bookPrice;

        const data = await book.save();
        res.send(data);        
    })

    //delete
    app.delete("/book/:id",async(req,res)=>{
        const data = await Book.deleteOne({_id : req.params.id});
        res.send(data);
    });

    app.listen(3000,()=>{
        console.log("Server started at 3000");
    })
})