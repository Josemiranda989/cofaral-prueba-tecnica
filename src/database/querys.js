export const queries = {
    getAllProducts: "select * from [Cofaral].[dbo].[Productos]",
    addNewProduct: "INSERT INTO [Cofaral].[dbo].[Productos] (sapcode, name, presentation, laboratorio, droga, tucuman, salta, chaco, precio) VALUES (@sapcode, @name, @presentation, @laboratorio, @droga, @tucuman, @salta, @chaco, @precio)",
    getProductById: "select * from [Cofaral].[dbo].[Productos] where sapcode = @sapcode"
}