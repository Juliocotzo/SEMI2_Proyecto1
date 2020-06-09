CREATE TABLE articulo(
	codigoArticulo VARCHAR(250),
	color VARCHAR(250),
	descripcion VARCHAR(250),
	departamento VARCHAR(250)
);

CREATE TABLE cliente(
	codigoCliente VARCHAR(250),
	nombreCliente VARCHAR(250),
	tipoCliente VARCHAR(250),
	direccionCliente VARCHAR(250),
	correoCliente VARCHAR(250)
);

CREATE TABLE sucursal(
	codigoSucursal VARCHAR(250),
	nombreSucursal VARCHAR(250),
	direccion VARCHAR(250),
	region VARCHAR(250),
	departamento VARCHAR(250),
	zona VARCHAR(250)
);

CREATE TABLE vendedor(
	codigoVendedor VARCHAR(250),
	nombreVendedor VARCHAR(250),
	sucursal VARCHAR(250)
);

CREATE TABLE ventas(
	codigoCliente VARCHAR(250),
	nombreCliente VARCHAR(250),
	tipoCliente VARCHAR(250),
	direccionCliente VARCHAR(250),
	correoCliente VARCHAR(250),
	codigoArticulo VARCHAR(250),
	color VARCHAR(250),
	descripcion VARCHAR(250),
	departamentoArticulo VARCHAR(250),
	codigoSucursal VARCHAR(250),
	nombreSucursal VARCHAR(250),
	direccion VARCHAR(250),
	region VARCHAR(250),
	departamento VARCHAR(250),
	zona VARCHAR(250),
	codigoVendedor VARCHAR(250),
	nombreVendedor VARCHAR(250),
	sucursal VARCHAR(250),
	fecha VARCHAR(250),
	unidades VARCHAR(250),
	precioUnitario VARCHAR(250)
);