CREATE TABLE articulo (
    id_articulo      INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    codigoarticulo   VARCHAR(250) NOT NULL,
    color            VARCHAR(250) NOT NULL,
    descripcion      VARCHAR(250) NOT NULL,
    departamento     VARCHAR(250) NOT NULL
);

CREATE TABLE cliente (
    id_cliente      INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    codigocliente   VARCHAR(250) NOT NULL,
    nombre          VARCHAR(250) NOT NULL,
    tipocliente     VARCHAR(250) NOT NULL,
    direccion       VARCHAR(250) NOT NULL,
    correo          VARCHAR(250) NOT NULL
);

CREATE TABLE fecha (
    id_fecha   INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    dia        INTEGER NOT NULL,
    mes        INTEGER NOT NULL,
    anio       INTEGER NOT NULL,
    fecha      DATE NOT NULL,
    semestre   INTEGER NOT NULL
);

CREATE TABLE region (
    id_region      INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    region         VARCHAR(250) NOT NULL,
    departamento   VARCHAR(250) NOT NULL,
    zona           INTEGER NOT NULL
);

CREATE TABLE sucursal (
    id_sucursal      INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    codigosucursal   VARCHAR(250) NOT NULL,
    nombre           VARCHAR(250) NOT NULL,
    direccion        VARCHAR(250) NOT NULL
);

CREATE TABLE vendedor (
    id_vendedor   INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    codigo        VARCHAR(250) NOT NULL,
    nombre        VARCHAR(250) NOT NULL,
    sucursal      VARCHAR(250) NOT NULL
);

CREATE TABLE venta (
    cantidad               INTEGER NOT NULL,
    preciounitario         MONEY NOT NULL,
    cliente_id_cliente     INTEGER NOT NULL,
    vendedor_id_vendedor   INTEGER NOT NULL,
    articulo_id_articulo   INTEGER NOT NULL,
    fecha_id_fecha         INTEGER NOT NULL,
    region_id_region       INTEGER NOT NULL,
    sucursal_id_sucursal   INTEGER NOT NULL,
    FOREIGN KEY (cliente_id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (vendedor_id_vendedor) REFERENCES vendedor(id_vendedor),
    FOREIGN KEY (articulo_id_articulo) REFERENCES articulo(id_articulo),
    FOREIGN KEY (fecha_id_fecha) REFERENCES fecha(id_fecha),
    FOREIGN KEY (region_id_region) REFERENCES region(id_region),
    FOREIGN KEY (sucursal_id_sucursal) REFERENCES sucursal(id_sucursal)
);

