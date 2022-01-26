export const queries = {
  getAllProducts: "select * from [Cofaral].[dbo].[Productos]",
  addNewProduct:
    "INSERT INTO [Cofaral].[dbo].[Productos] (sapcode, name, presentation, laboratorio, droga, tucuman, salta, chaco, precio) VALUES (@sapcode, @name, @presentation, @laboratorio, @droga, @tucuman, @salta, @chaco, @precio)",
  getProductBySapcode:
    "select * from [Cofaral].[dbo].[Productos] where sapcode = @sapcode",
  deleteProductBySapcode:
    "delete from [Cofaral].[dbo].[Productos] where sapcode = @sapcode",
  getTotalProducts: "select count(*) from [Cofaral].[dbo].[Productos]",
  updateProductBySapcode: "update [Cofaral].[dbo].[Productos] set name = @name, presentation = @presentation, laboratorio = @laboratorio, droga = @droga, tucuman = @tucuman, salta = @salta, chaco = @chaco, precio = @precio where sapcode = @sapcode"
};
