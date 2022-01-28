import { getConnection, sql, queries } from "../database";
import { validationResult } from "express-validator"

/* Todos los Productos */
export const getProducts = async (req, res) => {
  try {
    const pool = await getConnection();
    let result = await pool.request().query(queries.getAllProducts)
    result = result.recordset;
    res.status(200).json({
      total: result.length,
      productos: result,
      status: 200,
    });
  } catch (err) {
    res.status(500);
    res.send(err.message);
  }
};
/* Crear producto */
export const newProduct = async (req, res) => {
  const resultValidation = validationResult(req)
  const { sapcode, name, presentation, laboratorio, droga, precio } = req.body;
  let { tucuman, salta, chaco } = req.body;

  if (resultValidation.errors.length > 0) {
    return res.status(400).json({
      errors: resultValidation.mapped()
    })
  }

  if (!tucuman) tucuman = 0;
  if (!salta) salta = 0;
  if (!chaco) chaco = 0;

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
        name: name,
        presentacion: presentation,
        laboratorio: laboratorio,
        droga: droga,
        tucuman: tucuman,
        salta: salta,
        chaco: chaco,
        precio: precio,
      },
      status: 200,
    });
  } catch (err) {
    res.status(500).send(err.message);
  }
};
/* Detalle de Producto */
export const getProductBySapcode = async (req, res) => {
  const { id } = req.params;
  try {
    const pool = await getConnection();
    const result = await pool
      .request()
      .input("sapcode", id)
      .query(queries.getProductBySapcode);
    res.status(200).json({
      product: result.recordset[0],
      status: 200,
    });
  } catch (err) {
    res.status(500).send(err.message);
  }
};
/* Eliminar producto */
export const deleteProductBySapcode = async (req, res) => {
  const { id } = req.params;
  try {
    const pool = await getConnection();
    await pool
      .request()
      .input("sapcode", id)
      .query(queries.deleteProductBySapcode);
    res.sendStatus(204).json({
      msg: "Producto borrado correctamente",
      status: 204
    });
  } catch (err) {
    res.status(500).send(err.message);
  }
};
/* Editar Producto */
export const updateProductBySapcode = async (req, res) => {
  const resultValidation = validationResult(req);
  const {
    name,
    presentation,
    laboratorio,
    droga,
    tucuman,
    salta,
    chaco,
    precio,
  } = req.body;
  const { id } = req.params;

  if (resultValidation.errors.length > 0) {
    return res.status(400).json({
      errors: resultValidation.mapped(),
    });
  }

  try {
    const pool = await getConnection();

    await pool
      .request()
      .input("sapcode", sql.Int, id)
      .input("name", sql.VarChar, name)
      .input("presentation", sql.VarChar, presentation)
      .input("laboratorio", sql.VarChar, laboratorio)
      .input("droga", sql.VarChar, droga)
      .input("tucuman", sql.Int, tucuman)
      .input("salta", sql.Int, salta)
      .input("chaco", sql.Int, chaco)
      .input("precio", sql.Decimal(10, 2), precio)
      .query(queries.updateProductBySapcode);

    res.status(200).json({
      msg: "Producto actualizado correctamente",
      data: {
        codigo: id,
        name: name,
        presentacion: presentation,
        laboratorio: laboratorio,
        droga: droga,
        tucuman: tucuman,
        salta: salta,
        chaco: chaco,
        precio: precio,
      },
      status: 200,
    });
  } catch (err) {
    res.status(500);
    res.send(err.message);
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
    res.status(500).send(err.message);
  }
};
/* Contador de Productos por Laboratorio*/
export const getTotalProductsByLaboratory = async (req, res) => {
  try {
    const pool = await getConnection();
    const result = (
      await pool.request().query(queries.getAllProducts)
    ).recordset;

    let laboratorys = [];
    for (let i = 0; i < result.length; i++) {
      laboratorys.push(result[i].laboratorio);
      laboratorys.sort();
    }

    let laboratory = [];
    let productsByLaboratory = [];
    let contador = 1;
    
    for (let i = 0; i < laboratorys.length; i++) {
      if (laboratorys[i + 1] === laboratorys[i]) {
        //console.log("se repite " + laboratorys[i]);
        contador++;
      } else {
        laboratory.push(laboratorys[i]);
        productsByLaboratory.push(contador);
        contador = 1;
      }
    }
    //console.log(laboratory);
    //console.log(productsByLaboratory);
   
    let total={}
    laboratory.forEach((key, i) => total[key] = productsByLaboratory[i]);

    res.status(200).json({
      cantidad: total,
      status:200
    });
  } catch (err) {
    res.status(500);
    res.send(err.message);
  }
};
