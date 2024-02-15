import express from "express";
import {
  getJabatan,
  getJabatanById,
  createJabatan,
  updateJabatan,
  deleteJabatan,
} from "../controllers/JabatanController.js";

const router = express.Router();

router.get("/jabatan", getJabatan);
router.get("/jabatan/:id_jabatan", getJabatanById);
router.post("/jabatan", createJabatan);
router.patch("/jabatan/:id_jabatan", updateJabatan);
router.delete("/jabatan/:id_jabatan", deleteJabatan);

export default router;
