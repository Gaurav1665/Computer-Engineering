const http = require("http")

const server = http.createServer((req,res)=>{
    res.end("Hello World!")
}).listen(3000,()=>{console.log("Server Screated At 3000")})