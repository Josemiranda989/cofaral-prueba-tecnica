import { check } from "express-validator";

const validateUpdate = [
  check("name").notEmpty().withMessage("Agrega un nombre al producto"),
  check("presentation").notEmpty().withMessage("Agrega una descripcion"),
  check("laboratorio").notEmpty().withMessage("Agrega el laboratorio"),
  check("droga").notEmpty().withMessage("Agrega la droga"),
  check("precio")
    .notEmpty()
    .withMessage("El precio")
    .bail()
    .isNumeric()
    .withMessage("El sapcode debe ser numerico"),
];

export default validateUpdate