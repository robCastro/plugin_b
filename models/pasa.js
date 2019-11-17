/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('pasa', {
		id_pasa: {
			type: DataTypes.INTEGER,
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		id_estado_paso: {
			type: DataTypes.INTEGER,
			allowNull: false,
			references: {
				model: 'estado_paso',
				key: 'id_estado_paso'
			}
		},
		id_arancel: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'arancel',
				key: 'id_arancel'
			}
		},
		id_aduana: {
			type: DataTypes.INTEGER,
			allowNull: false,
			references: {
				model: 'aduana',
				key: 'id_aduana'
			}
		},
		id_iva: {
			type: DataTypes.INTEGER,
			allowNull: true,
			references: {
				model: 'iva',
				key: 'id_iva'
			}
		},
		fecha_pasa: {
			type: DataTypes.DATEONLY,
			allowNull: false
		},
		id_transporte: {
			type: DataTypes.INTEGER,
			allowNull: false
		},
		id_mercancia: {
			type: DataTypes.INTEGER,
			allowNull: false
		}
	}, {
		tableName: 'pasa',
		timestamps: false
	});
};
