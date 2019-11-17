/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('aplica', {
		id_multa: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			references: {
				model: 'multa',
				key: 'id_multa'
			}
		},
		id_pasa: {
			type: DataTypes.INTEGER,
			allowNull: false,
			references: {
				model: 'pasa',
				key: 'id_pasa'
			}
		}
	}, {
		tableName: 'aplica',
		timestamps: false
	});
};
