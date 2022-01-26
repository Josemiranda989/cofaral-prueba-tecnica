import { getConnection, sql, queries } from "../database";

/* Todos los Productos */
export const getProducts = async (req, res) => {
  try {
    const pool = await getConnection();
    const result = await pool
      .request()
      .query(queries.getAllProducts);
    res.json(result.recordset);
  } catch (err) {
    res.status(500)
      res.send(err.message);
  }
};
/* Producto Nuevo */
export const newProduct = async (req, res) => {
  const { sapcode, name, presentation, laboratorio, droga } = req.body;
  let { tucuman, salta, chaco, precio } = req.body;

  if (!sapcode || !name || !precio) {
    return res.status(400).json({ msg: "Por favor llena los campos" });
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

   res.json({
     sapcode,
     name,
     presentation,
     laboratorio,
     droga,
     tucuman,
     salta,
     chaco,
     precio,
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
    const result = await pool
      .request()
      .query(queries.getTotalProducts);
    res.json({"total":result.recordset[0]['']});
  } catch (err) {
    res.status(500)
      res.send(err.message);
  }
};
/* Detalle de Producto */
export const getProductBySapcode = async (req, res) => {
  const { id } = req.params 
 
  const pool = await getConnection()
  const result = await pool.request().input('sapcode', id).query(queries.getProductBySapcode)

  res.json(result.recordset[0]);
};
/* Eliminar producto */
export const deleteProductBySapcode = async (req, res) => {
   const { id } = req.params;

   const pool = await getConnection();
   const result = await pool
     .request()
     .input("sapcode", id)
     .query(queries.deleteProductBySapcode);

  res.sendStatus(204);
};
/* Editar Producto */
export const updateProductBySapcode = async (req, res) => {
  const { name, presentation, laboratorio, droga, tucuman, salta, chaco, precio, sapcode } = req.body;
  const { id } = req.params;


  if (!name || !precio) {
    return res.status(400).json({ msg: "Por favor llena los campos" });
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

    res.json({
      sapcode,
      name,
      presentation,
      laboratorio,
      droga,
      tucuman,
      salta,
      chaco,
      precio,
    });
  } catch (err) {
    res.status(500);
    res.send(err.message);
  }
};

