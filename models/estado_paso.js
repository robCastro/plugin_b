/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('estado_paso', {
		id_estado_paso: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		nombre_estado_paso: {
			type: DataTypes.STRING,
			allowNull: false
		},
		descripcion_estado_paso: {
			type: DataTypes.STRING,
			allowNull: false
		}
	}, {
		tableName: 'estado_paso',
		timestamps: false
	});
};
