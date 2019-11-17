'use strict';

const express = require('express');
const pluginBController = require('../controllers/pluginBController');
const router = express.Router();

router.get('/estado_paso', pluginBController.get_estado_paso);

module.exports = router;
