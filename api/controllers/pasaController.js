'use strict';

const models = require('../../models/index');
const Pasa = models.pasa;
const EstadoPaso = models.estado_paso;
const Multa = models.multa;
const TipoMulta = models.tipo_multa;
const Iva = models.iva;
const Aduana = models.aduana;
const Arancel = models.arancel;

exports.get_pasa_detalle = function(req, res){
	Pasa.belongsTo(EstadoPaso, {foreignKey: 'id_estado_paso'});
	EstadoPaso.hasMany(Pasa, {foreignKey: 'id_estado_paso'});

	Pasa.belongsToMany(Multa, {foreignKey: 'id_pasa', through: 'aplica'});
	Multa.belongsToMany(Pasa, {foreignKey: 'id_multa', through: 'aplica'});

	Pasa.belongsTo(Iva, {foreignKey: 'id_iva'});
	Iva.hasMany(Pasa, {foreignKey: 'id_iva'});

	Pasa.belongsTo(Aduana, {foreignKey: 'id_aduana'});
	Aduana.hasMany(Pasa, {foreignKey: 'id_aduana'});

	Pasa.belongsTo(Arancel, {foreignKey: 'id_arancel'});
	Arancel.hasMany(Pasa, {foreignKey: 'id_arancel'});

	Multa.belongsTo(TipoMulta, {foreignKey: 'id_tipo_multa'});
	TipoMulta.hasMany(Multa, {foreignKey: 'id_tipo_multa'});


	Pasa.findAll({
			include:[
				{model: EstadoPaso},
				{
					model: Multa,
					include : [{model:TipoMulta}]
				},
				{model: Iva},
				{model: Aduana},
				{model: Arancel}
			],
			where : {id_mercancia : req.params.id_mercancia}
		})
		.then(pasan => {
			let detalles = [];
			if(pasan.length === 0){
				res.sendStatus(404);
				return;
			}
			pasan.forEach(pasa => {
				let detalle = new Object();
				detalle.nombre_aduana = pasa.aduana.nombre_aduana;
				detalle.fecha_registro = pasa.fecha_pasa;
				detalle.tasa_entrada = pasa.arancel.tasa_entrada_arancel;
				detalle.tasa_paso = pasa.arancel.tasa_paso_arancel;
				detalle.estado = pasa.estado_paso.nombre_estado_paso;
				detalle.descripcion_estado = pasa.estado_paso.descripcion_estado_paso;
				detalle.info_extra = "";
				detalle.otras_tasas = parseFloat(pasa.iva.tasa_iva);
				detalle.info_extra = detalle.info_extra + "IVA: " + pasa.iva.tasa_iva*100 + "%\n";
				detalle.total_recargos = 0;
				pasa.multa.forEach(multaAux => {
					detalle.otras_tasas = detalle.otras_tasas + parseFloat(multaAux.tasa_multa);
					detalle.info_extra = detalle.info_extra + "Multa: " + multaAux.tipo_multum.nombre_tipo_multa + "\n";
					detalle.info_extra = detalle.info_extra + "Porcentaje: " + multaAux.tasa_multa*100 + "%\n";
				});
				detalles.push(detalle);
			});
			res.status(200).json(detalles);
		}).catch(err => {
			console.log(err);
			res.status(500).json(err);
		}
	);
}
