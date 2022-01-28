import { Router } from "express";
import validateCreate from "../middlewares/createProduct"
import validateUpdate from "../middlewares/updateProduct"

import {
  deleteProductBySapcode,
  getProductBySapcode,
  getProducts,
  getTotalProducts,
  getTotalProductsByLaboratory,
  newProduct,
  updateProductBySapcode,
} from "../controllers/products.controller";

const router = Router();
/* Todos los productos http://localhost:3000/productos */
 
router.get("/", getProducts);

/* Crear producto http://localhost:3000/ */
router.post("/", validateCreate, newProduct);

/* Total de productos por laboratorio http://localhost:3000/productos-por-laboratorio */
router.get("/productos-por-laboratorio", getTotalProductsByLaboratory);

/* Total de productos http://localhost:3000/total */
router.get("/total", getTotalProducts);

/* Detalle de un producto http://localhost:3000/:id */
router.get("/:id", getProductBySapcode);

/* Todos los productos http://localhost:3000/:id */
router.delete("/:id", deleteProductBySapcode);

/* Actualizar producto http://localhost:3000/:id */
router.put("/:id", validateUpdate, updateProductBySapcode);

export default router;
