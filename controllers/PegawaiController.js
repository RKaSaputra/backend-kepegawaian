import Pegawai from "../models/PegawaiModel.js";

export const getPegawai = async (req, res) => {
  try {
    const response = await Pegawai.findAll();
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getPegawaiById = async (req, res) => {
  try {
    const response = await Pegawai.findOne({
      where: {
        id_pegawai: req.params.id_pegawai,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const createPegawai = async (req, res) => {
  try {
    await Pegawai.create(req.body);
    res.status(201).json({ msg: "Pegawai Created" });
  } catch (error) {
    console.log(error.message);
  }
};

export const updatePegawai = async (req, res) => {
  try {
    await Pegawai.update(req.body, {
      where: {
        id_pegawai: req.params.id_pegawai,
      },
    });
    res.status(200).json({ msg: "Pegawai Updated" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deletePegawai = async (req, res) => {
  try {
    await Pegawai.destroy({
      where: {
        id_pegawai: req.params.id_pegawai,
      },
    });
    res.status(200).json({ msg: "Pegawai Deleted" });
  } catch (error) {
    console.log(error.message);
  }
};
