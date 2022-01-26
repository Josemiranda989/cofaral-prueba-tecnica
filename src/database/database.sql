CREATE DATABASE Cofaral

use Cofaral

Declare @JSON varchar(max)
SELECT
    @JSON = Bulkcolumn
FROM
    OPENROWSET (
        BULK 'D:\LocalDev\DesafioCofaral\src\database\productos.json',
        SINGLE_CLOB
    ) import
SELECT
    * INTO Productos
FROM
    OPENJSON (@JSON, '$.rows') WITH (
        [sapcode] int,
        [name] varchar(50),
        [presentation] varchar(250),
        [laboratorio] varchar(50),
        [droga] varchar(50),
        [tucuman] int,
        [salta] int,
        [chaco] int,
        [precio] decimal(10, 2)
    )