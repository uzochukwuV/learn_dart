var http = require('http');

var httpServer = http.createServer(function(req, res){
    res.writeHead(200, {
        'Content-Type': 'text/plain'
    })
    res.end('Hello World');
});



httpServer.listen(8081);

console.log('Server is running at http://127.0.0.1:8081');