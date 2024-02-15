import express from "express";
import cors from "cors";
import PegawaiRoute from "./routes/PegawaiRoute.js";
import JabatanRoute from "./routes/JabatanRoute.js";
import DivisiRoute from "./routes/JabatanRoute.js";

const app = express();
app.use(cors());
app.use(express.json());
app.use(PegawaiRoute);
app.use(JabatanRoute);
app.use(DivisiRoute);

app.listen(5000, () => console.log("Server up and running..."));
