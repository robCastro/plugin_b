/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('tipo_multa', {
		id_tipo_multa: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		nombre_tipo_multa: {
			type: DataTypes.STRING,
			allowNull: false
		},
		activo_tipo_multa: {
			type: DataTypes.BOOLEAN,
			allowNull: false
		}
	}, {
		tableName: 'tipo_multa',
		timestamps: false
	});
};
