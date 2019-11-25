'use strict';

const express = require('express');
const pluginBController = require('../controllers/pluginBController');
const pasaController = require('../controllers/pasaController');
const router = express.Router();

router.get('/estado_paso', pluginBController.get_estado_paso);
router.get('/pasa/:id_mercancia/detalle', pasaController.get_pasa_detalle);

module.exports = router;
