import { check } from "express-validator";

//sapcode, name, presentation, laboratorio, droga, precio;
const validateCreate = [
  check("sapcode")
    .notEmpty()
    .withMessage("Agrega un sapcode")
    .bail()
    .isNumeric()
    .withMessage("El sapcode debe ser numerico"),
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



export default validateCreate;
