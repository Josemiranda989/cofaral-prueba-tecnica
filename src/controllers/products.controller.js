import { getConnection, sql, queries } from "../database";
import { validationResult } from "express-validator";

const handleError = (res, scope, err) => {
  console.error(`[${scope}]`, err);
  res.status(500).json({ error: "Internal server error", status: 500 });
};

/* Todos los Productos */
export const getProducts = async (req, res) => {
  try {
    const pool = await getConnection();
    const result = (await pool.request().query(queries.getAllProducts)).recordset;
    res.status(200).json({
      total: result.length,
      productos: result,
      status: 200,
    });
  } catch (err) {
    handleError(res, "getProducts", err);
  }
};

/* Crear producto */
export const newProduct = async (req, res) => {
  const resultValidation = validationResult(req);
  if (!resultValidation.isEmpty()) {
    return res.status(400).json({ errors: resultValidation.mapped() });
  }

  const { sapcode, name, presentation, laboratorio, droga, precio } = req.body;
  const tucuman = req.body.tucuman ?? 0;
  const salta = req.body.salta ?? 0;
  const chaco = req.body.chaco ?? 0;

  try {
    const pool = await getConnection();
    await pool
      .request()
      .input("sapcode", sql.Int, sapcode)
      .input("name", sql.VarChar, name)
      .input("presentation", sql.VarChar, presentation)
      .input("laboratorio", sql.VarChar, laboratorio)
      .input("droga", sql.VarChar, droga)
      .input("tucuman", sql.Int, tucuman)
      .input("salta", sql.Int, salta)
      .input("chaco", sql.Int, chaco)
      .input("precio", sql.Decimal(10, 2), precio)
      .query(queries.addNewProduct);

    res.status(200).json({
      msg: "Producto agregado correctamente",
      data: {
        codigo: sapcode,
        name,
        presentacion: presentation,
        laboratorio,
        droga,
        tucuman,
        salta,
        chaco,
        precio,
      },
      status: 200,
    });
  } catch (err) {
    handleError(res, "newProduct", err);
  }
};

/* Detalle de Producto */
export const getProductBySapcode = async (req, res) => {
  const resultValidation = validationResult(req);
  if (!resultValidation.isEmpty()) {
    return res.status(400).json({ errors: resultValidation.mapped() });
  }

  const sapcode = Number(req.params.id);
  try {
    const pool = await getConnection();
    const result = await pool
      .request()
      .input("sapcode", sql.Int, sapcode)
      .query(queries.getProductBySapcode);

    const product = result.recordset[0];
    if (!product) {
      return res.status(404).json({ error: "Product not found", status: 404 });
    }

    res.status(200).json({ product, status: 200 });
  } catch (err) {
    handleError(res, "getProductBySapcode", err);
  }
};

/* Eliminar producto */
export const deleteProductBySapcode = async (req, res) => {
  const resultValidation = validationResult(req);
  if (!resultValidation.isEmpty()) {
    return res.status(400).json({ errors: resultValidation.mapped() });
  }

  const sapcode = Number(req.params.id);
  try {
    const pool = await getConnection();
    const result = await pool
      .request()
      .input("sapcode", sql.Int, sapcode)
      .query(queries.deleteProductBySapcode);

    if (result.rowsAffected?.[0] === 0) {
      return res.status(404).json({ error: "Product not found", status: 404 });
    }

    res.sendStatus(204);
  } catch (err) {
    handleError(res, "deleteProductBySapcode", err);
  }
};

/* Editar Producto */
export const updateProductBySapcode = async (req, res) => {
  const resultValidation = validationResult(req);
  if (!resultValidation.isEmpty()) {
    return res.status(400).json({ errors: resultValidation.mapped() });
  }

  const sapcode = Number(req.params.id);
  const { name, presentation, laboratorio, droga, precio } = req.body;
  const tucuman = req.body.tucuman ?? 0;
  const salta = req.body.salta ?? 0;
  const chaco = req.body.chaco ?? 0;

  try {
    const pool = await getConnection();
    const result = await pool
      .request()
      .input("sapcode", sql.Int, sapcode)
      .input("name", sql.VarChar, name)
      .input("presentation", sql.VarChar, presentation)
      .input("laboratorio", sql.VarChar, laboratorio)
      .input("droga", sql.VarChar, droga)
      .input("tucuman", sql.Int, tucuman)
      .input("salta", sql.Int, salta)
      .input("chaco", sql.Int, chaco)
      .input("precio", sql.Decimal(10, 2), precio)
      .query(queries.updateProductBySapcode);

    if (result.rowsAffected?.[0] === 0) {
      return res.status(404).json({ error: "Product not found", status: 404 });
    }

    res.status(200).json({
      msg: "Producto actualizado correctamente",
      data: {
        codigo: sapcode,
        name,
        presentacion: presentation,
        laboratorio,
        droga,
        tucuman,
        salta,
        chaco,
        precio,
      },
      status: 200,
    });
  } catch (err) {
    handleError(res, "updateProductBySapcode", err);
  }
};

/* Contador de Productos */
export const getTotalProducts = async (req, res) => {
  try {
    const pool = await getConnection();
    const result = await pool.request().query(queries.getTotalProducts);
    res.status(200).json({
      total: result.recordset[0][""],
      status: 200,
    });
  } catch (err) {
    handleError(res, "getTotalProducts", err);
  }
};

/* Contador de Productos por Laboratorio */
export const getTotalProductsByLaboratory = async (req, res) => {
  try {
    const pool = await getConnection();
    const rows = (await pool.request().query(queries.getAllProducts)).recordset;

    const cantidad = rows.reduce((acc, { laboratorio }) => {
      acc[laboratorio] = (acc[laboratorio] ?? 0) + 1;
      return acc;
    }, {});

    res.status(200).json({ cantidad, status: 200 });
  } catch (err) {
    handleError(res, "getTotalProductsByLaboratory", err);
  }
};
