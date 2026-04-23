import { Router } from "express";
import validateCreate from "../middlewares/createProduct";
import validateUpdate from "../middlewares/updateProduct";
import validateId from "../middlewares/validateId";

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

router.get("/", getProducts);
router.post("/", validateCreate, newProduct);
router.get("/productos-por-laboratorio", getTotalProductsByLaboratory);
router.get("/total", getTotalProducts);
router.get("/:id", validateId, getProductBySapcode);
router.delete("/:id", validateId, deleteProductBySapcode);
router.put("/:id", validateUpdate, updateProductBySapcode);

export default router;
