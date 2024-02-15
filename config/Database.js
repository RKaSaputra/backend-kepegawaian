import { Sequelize } from "sequelize";

const db = new Sequelize("MySql_IF-3_Kepegawaian", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default db;
