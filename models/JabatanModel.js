import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const Jabatan = db.define(
  "jabatan",
  {
    id_jabatan: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    jabatan: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    gaji_pokok: {
      type: DataTypes.FLOAT,
      allowNull: false,
    },
  },
  {
    sequelize: db,
    modelName: "jabatan",
    freezeTableName: true,
  }
);

export default Jabatan;
