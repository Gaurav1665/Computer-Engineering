const fs = require("fs")

const express = require("express")
const app = express();

app.get("/",(req,res)=>{
    res.write(fs.readFileSync("home.txt","utf-8"))
    res.send();
})

app.get("/about",(req,res)=>{
    res.write(fs.readFileSync("aboutUS.txt","utf-8"))
    res.send();
})

app.get("/contact",(req,res)=>{
    res.write(fs.readFileSync("contact.txt","utf-8"))
    res.send();
})

app.get("/category",(req,res)=>{
    res.write(fs.readFileSync("category.txt","utf-8"))
    res.send();
})

app.get("/product",(req,res)=>{
    res.write(fs.readFileSync("product.txt","utf-8"))
    res.send();
})

app.listen(3000,()=>{
    console.log("Server Screated At 3000");
})
