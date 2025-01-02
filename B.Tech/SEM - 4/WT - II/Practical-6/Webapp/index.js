const http = require("http")

const fs = require("fs")

const server = http.createServer((req,res)=>{
    if(req.url=='/'){
        res.write(fs.readFileSync("home.txt","utf-8"));
        res.end();
    }
    else if(req.url=='/about'){
        res.write(fs.readFileSync("aboutUS.txt","utf-8"));
        res.end();
    }
    else if(req.url=='/contact'){
        res.write(fs.readFileSync("contact.txt","utf-8"));
        res.end();
    }
    else if(req.url=='/category'){
        res.write(fs.readFileSync("category.txt","utf-8"));
        res.end();
    }
    else if(req.url=='/product'){
        res.write(fs.readFileSync("product.txt","utf-8"));
        res.end();
    }
})

server.listen(3000,()=>{
    console.log("Server Satrted at 3000")
})