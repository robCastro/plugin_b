'use strict';

const models = require('../../models/index');
const EstadoPaso = models.estado_paso;

exports.get_estado_paso = function(req, res) {
  EstadoPaso.findAll()
    .then(estados => {
	res.status(200).json(estados);
    })
    .catch(err => {
	console.log('Error: ' + err);
	res.status(500).json({ msg: "Error al mostrar estados" });
    });
};

