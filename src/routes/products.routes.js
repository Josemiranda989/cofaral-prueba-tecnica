import { Router } from 'express';

import { deleteProduct, editProduct, getProductById, getProducts, newProduct } from '../controllers/products.controller'

const router = Router();

router.get('/productos', getProducts)

router.post("/productos", newProduct);

router.get("/productos/:id", getProductById);

router.delete("/productos", deleteProduct);

router.put("/productos", editProduct);


export default router
