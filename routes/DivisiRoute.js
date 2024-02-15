import express from "express";
import {
  getDivisi,
  getDivisiById,
  createDivisi,
  updateDivisi,
  deleteDivisi,
} from "../controllers/DivisiController.js";

const router = express.Router();

router.get("/divisi", getDivisi);
router.get("/divisi/:id_divisi", getDivisiById);
router.post("/divisi", createDivisi);
router.patch("/divisi/:id_divisi", updateDivisi);
router.delete("/divisi/:id_divisi", deleteDivisi);

export default router;
