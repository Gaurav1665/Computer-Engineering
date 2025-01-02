// WebAppExpress.js
const express = require("express")
const app = express();

app.get("/",(req,res)=>{
    res.write(`
        <html>
            <body>
                <center>
                    <h1>This is Home Page</h1>
                </center>
            </body>
        </html>
    `)
    res.send();
})

app.get("/about",(req,res)=>{
    res.write(`
        <html>
            <body>
                <center>
                    <h1>This is About US Page</h1>
                </center>
            </body>
        </html>
    `)
    res.send();
})

app.get("/contact",(req,res)=>{
    res.write(`
        <html>
            <body>
                <center>
                    <h1>This is Contact Page</h1>
                </center>
            </body>
        </html>
    `)
    res.send();
})

app.get("/category",(req,res)=>{
    res.write(`
        <html>
            <body>
                <center>
                    <h1>This is Category Page</h1>
                </center>
            </body>
        </html>
    `)
    res.send();
})

app.get("/product",(req,res)=>{
    res.write(`
        <html>
            <body>
                <center>
                    <h1>This is Procuct Page</h1>
                </center>
            </body>
        </html>
    `)
    res.send();
})

app.listen(3000,()=>{
    console.log("Server Screated At 3000");
})

setInterval(()=>{
    
})