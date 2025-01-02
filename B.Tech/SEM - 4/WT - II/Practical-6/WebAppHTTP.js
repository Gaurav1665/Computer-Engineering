// WebAppHTTP.js
const http = require("http")

const server = http.createServer((req,res)=>{
    res.setHeader("Content-Type","text/html")

    if(req.url=='/'){
        res.write(`
            <html>
                <body>
                    <center>
                        <h1>This is Home Page</h1>
                    </center>
                </body>
            </html>
        `)
        res.end();
    }
    else if(req.url=='/about'){
        res.write(`
            <html>
                <body>
                    <center>
                        <h1>This is About US Page</h1>
                    </center>
                </body>
            </html>
        `)
        res.end();
    }
    else if(req.url=='/contact'){
        res.write(`
            <html>
                <body>
                    <center>
                        <h1>This is Contact Page</h1>
                    </center>
                </body>
            </html>
        `)
        res.end();
    }
    else if(req.url=='/category'){
        res.write(`
            <html>
                <body>
                    <center>
                        <h1>This is category Page</h1>
                    </center>
                </body>
            </html>
        `)
        res.end();
    }
    else if(req.url=='/product'){
        res.write(`
            <html>
                <body>
                    <center>
                        <h1>This is Procuct Page</h1>
                    </center>
                </body>
            </html>
        `)
        res.end();
    }
})

server.listen(3000,()=>{
    console.log("Server Satrted at 3000")
})