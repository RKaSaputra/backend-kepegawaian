import { Sequelize } from "sequelize";

const db = new Sequelize("pegawai", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
