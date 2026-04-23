import { check } from "express-validator";

const validateCreate = [
  check("sapcode")
    .notEmpty().withMessage("Agrega un sapcode").bail()
    .isInt({ min: 1 }).withMessage("El sapcode debe ser un entero positivo")
    .toInt(),
  check("name")
    .trim().notEmpty().withMessage("Agrega un nombre al producto")
    .isLength({ max: 255 }).withMessage("El nombre es demasiado largo"),
  check("presentation")
    .trim().notEmpty().withMessage("Agrega una descripcion")
    .isLength({ max: 255 }),
  check("laboratorio")
    .trim().notEmpty().withMessage("Agrega el laboratorio")
    .isLength({ max: 255 }),
  check("droga")
    .trim().notEmpty().withMessage("Agrega la droga")
    .isLength({ max: 255 }),
  check("precio")
    .notEmpty().withMessage("Agrega un precio").bail()
    .isFloat({ min: 0 }).withMessage("El precio debe ser un numero positivo")
    .toFloat(),
  check("tucuman").optional().isInt({ min: 0 }).toInt(),
  check("salta").optional().isInt({ min: 0 }).toInt(),
  check("chaco").optional().isInt({ min: 0 }).toInt(),
];

export default validateCreate;
