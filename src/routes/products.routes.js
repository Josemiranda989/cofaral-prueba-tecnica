import { Router } from "express";

import {
  deleteProductBySapcode,
  getProductBySapcode,
  getProducts,
  getTotalProducts,
  newProduct,
  updateProductBySapcode,
} from "../controllers/products.controller";

const router = Router();

router.get("/productos", getProducts);

router.post("/productos", newProduct);

router.get("/productos/total", getTotalProducts);

router.get("/productos/:id", getProductBySapcode);

router.delete("/productos/:id", deleteProductBySapcode);

router.put("/productos/:id", updateProductBySapcode);

export default router;
