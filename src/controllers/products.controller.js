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
/* Detalle de Producto */
export const getProductById = async (req, res) => {
  const { id } = req.params 
 
  const pool = await getConnection()
  const result = await pool.request().input('sapcode', id).query(queries.getProductById)

  res.json(result.recordset[0]);
};
/* Editar Producto */
export const editProduct = async (req, res) => {
  const pool = await getConnection();
  const result = await pool
    .request()
    .query("select * from [Cofaral].[dbo].[Productos]");
  console.log(result);

  res.json(result.recordset);
};
/* Eliminar producto */
export const deleteProduct = async (req, res) => {
  const pool = await getConnection();

  const result = await pool
    .request()
    .query("select * from [Cofaral].[dbo].[Productos]");
  console.log(result);

  res.json(result.recordset);
};
