const express = require('express');
const path = require('path');

const app = express();
const PORT = 8080;

// Serve static files from root and dist directories
app.use(express.static('.'));
app.use('/dist', express.static('dist'));

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});