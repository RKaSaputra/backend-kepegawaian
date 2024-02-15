import express from "express";
import {
  getPegawai,
  getPegawaiById,
  createPegawai,
  updatePegawai,
  deletePegawai,
} from "../controllers/PegawaiController.js";

const router = express.Router();

router.get("/pegawai", getPegawai);
router.get("/pegawai/:id_pegawai", getPegawaiById);
router.post("/pegawai", createPegawai);
router.patch("/pegawai/:id_pegawai", updatePegawai);
router.delete("/pegawai/:id_pegawai", deletePegawai);

export default router;
