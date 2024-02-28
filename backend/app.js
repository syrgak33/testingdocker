const express = require('express');
const app = express();
const port = 3001;

app.get('/', (req, res) => res.send('Hello from Backend!'));

app.listen(port, () => console.log(`Backend app listening on port ${port}!`));
