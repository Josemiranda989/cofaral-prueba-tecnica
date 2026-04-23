import { param } from "express-validator";

const validateId = [
  param("id")
    .isInt({ min: 1 }).withMessage("El id debe ser un entero positivo")
    .toInt(),
];

export default validateId;
