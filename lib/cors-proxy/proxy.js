const express = require('express');
const { createProxyMiddleware } = require('http-proxy-middleware');
const cors = require('cors');

const app = express();
const PORT = 5000;

// Enable CORS
app.use(cors());


app.use(
  '/api',
  createProxyMiddleware({
    target: 'http://13.234.34.248:8083', // API server
    changeOrigin: true, // virtual hosted sites
    pathRewrite: {
      '^/api': '', // removes '/api' from the request
    },
  })
);

// Start the server
app.listen(PORT, () => {
  console.log(`Proxy server is running on http://localhost:${PORT}`);
});
