import Divisi from "../models/DivisiModel.js";

export const getDivisi = async (req, res) => {
  try {
    const response = await Divisi.findAll();
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getDivisiById = async (req, res) => {
  try {
    const response = await Divisi.findOne({
      where: {
        id_divisi: req.params.id_divisi,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const createDivisi = async (req, res) => {
  try {
    await Divisi.create(req.body);
    res.status(201).json({ msg: "Divisi Created" });
  } catch (error) {
    console.log(error.message);
  }
};

export const updateDivisi = async (req, res) => {
  try {
    await Divisi.update(req.body, {
      where: {
        id_divisi: req.params.id_divisi,
      },
    });
    res.status(200).json({ msg: "Divisi Updated" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deleteDivisi = async (req, res) => {
  try {
    await Divisi.destroy({
      where: {
        id_divisi: req.params.id_divisi,
      },
    });
    res.status(200).json({ msg: "Divisi Deleted" });
  } catch (error) {
    console.log(error.message);
  }
};
