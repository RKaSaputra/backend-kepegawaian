import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Jabatan from "./JabatanModel.js";
import Divisi from "./DivisiModel.js";

const { DataTypes } = Sequelize;

const Pegawai = db.define(
  "pegawai",
  {
    id_pegawai: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    nama_pegawai: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    alamat: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    id_jabatan: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: Jabatan,
        key: "id_jabatan",
      },
    },
    id_divisi: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: Divisi,
        key: "id_divisi",
      },
    },
  },
  {
    sequelize: db,
    modelName: "pegawai",
    freezeTableName: true,
  }
);

export default Pegawai;
