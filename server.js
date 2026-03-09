const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = 8080;
const MIME = {
  '.html': 'text/html',
  '.js': 'text/javascript',
  '.css': 'text/css',
  '.json': 'application/json',
  '.ico': 'image/x-icon',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.svg': 'image/svg+xml'
};

const server = http.createServer((req, res) => {
  let file = req.url === '/' ? 'nippon-electricals-pos.html' : req.url.replace(/^\//, '').replace(/\?.*$/, '');
  if (!file) file = 'nippon-electricals-pos.html';
  file = path.resolve(path.join(__dirname, file));
  if (!file.startsWith(path.resolve(__dirname))) { res.writeHead(403); res.end(); return; }
  const ext = path.extname(file);
  fs.readFile(file, (err, data) => {
    if (err) {
      res.writeHead(404); res.end('Not found');
      return;
    }
    res.writeHead(200, { 'Content-Type': MIME[ext] || 'application/octet-stream' });
    res.end(data);
  });
});

server.listen(PORT, () => {
  console.log('');
  console.log('  Nippon POS running at http://localhost:' + PORT);
  console.log('  Open in browser: http://localhost:' + PORT);
  console.log('');
});
