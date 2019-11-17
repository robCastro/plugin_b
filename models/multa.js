/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('multa', {
		id_multa: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		id_tipo_multa: {
			type: DataTypes.INTEGER,
			allowNull: false,
			references: {
				model: 'tipo_multa',
				key: 'id_tipo_multa'
			}
		},
		tasa_multa: {
			type: DataTypes.DOUBLE,
			allowNull: false
		},
		fecha_multa: {
			type: DataTypes.DATEONLY,
			allowNull: false
		},
		activo_multa: {
			type: DataTypes.BOOLEAN,
			allowNull: false
		}
	}, {
		tableName: 'multa',
		timestamps: false
	});
};
