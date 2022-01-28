import { Router } from "express";
import validateCreate from "../middlewares/products"

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
router.get("/productos", getProducts);

/* Crear producto http://localhost:3000/productos */
router.post("/productos", validateCreate, newProduct);

/* Total de productos por laboratorio http://localhost:3000/productos/productos-por-laboratorio */
router.get("/productos/productos-por-laboratorio", getTotalProductsByLaboratory);

/* Total de productos http://localhost:3000/productos/total */
router.get("/productos/total", getTotalProducts);

/* Detalle de un producto http://localhost:3000/productos/:id */
router.get("/productos/:id", getProductBySapcode);

/* Todos los productos http://localhost:3000/productos/:id */
router.delete("/productos/:id", deleteProductBySapcode);

/* Actualizar producto http://localhost:3000/productos/:id */
router.put("/productos/:id", updateProductBySapcode);

export default router;
