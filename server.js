var express = require('express'),
    app = express(),
    port = process.env.PORT || 3002;

const cors = require('cors');

app.listen(port);
app.use(cors());

app.use('/api/pluginb', require('./api/routes/routes'));

console.log('RESTful API server started on: ' + port);
