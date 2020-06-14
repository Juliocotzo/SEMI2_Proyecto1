USE error_seminario201504381
GO
CREATE TABLE articulo (
    codigoarticulo   VARCHAR(250),
    color            VARCHAR(250),
    descripcion      VARCHAR(250),
    departamento     VARCHAR(250),
    tipo_error       VARCHAR(250)
)
GO
CREATE TABLE cliente (
    codigocliente   VARCHAR(250),
    nombre          VARCHAR(250),
    tipocliente     VARCHAR(250),
    direccion       VARCHAR(250),
    correo          VARCHAR(250),
    tipo_error      VARCHAR(250)
)
GO
CREATE TABLE fecha (
    dia        VARCHAR(250),
    nombreMes  VARCHAR(20),   
    mes        VARCHAR(250),
    anio       VARCHAR(250),
    fecha      VARCHAR(250),
    semestre   VARCHAR(250),
    tipo_error VARCHAR(250)
)
GO
CREATE TABLE region (
    region         VARCHAR(250),
    departamento   VARCHAR(250),
    zona           VARCHAR(250),
    tipo_error     VARCHAR(250)
)
GO
CREATE TABLE sucursal (
    codigosucursal   VARCHAR(250),
    nombre           VARCHAR(250),
    direccion        VARCHAR(250),
    tipo_error       VARCHAR(250)
)
GO
CREATE TABLE vendedor (
    codigo        VARCHAR(250),
    nombre        VARCHAR(250),
    sucursal      VARCHAR(250),
    tipo_error    VARCHAR(250)
)
GO
CREATE TABLE venta (
    cantidad               VARCHAR(250),
    preciounitario         VARCHAR(250),
    total                  VARCHAR(250),
    tipo_error             VARCHAR(250)
)
GO


