CREATE TABLE articulo (
    id_articulo      INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    codigoarticulo   VARCHAR(10) NOT NULL,
    color            VARCHAR(10) NOT NULL,
    descripcion      VARCHAR(50) NOT NULL,
    departamento     VARCHAR(25) NOT NULL
);

CREATE TABLE cliente (
    id_cliente      INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    codigocliente   VARCHAR(6) NOT NULL,
    nombre          VARCHAR(50) NOT NULL,
    tipocliente     VARCHAR(25) NOT NULL,
    direccion       VARCHAR(100) NOT NULL,
    correo          VARCHAR(25) NOT NULL
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
    region         VARCHAR(20) NOT NULL,
    departamento   VARCHAR(20) NOT NULL,
    zona           INTEGER NOT NULL
);

CREATE TABLE sucursal (
    id_sucursal      INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    codigosucursal   VARCHAR(5) NOT NULL,
    nombre           VARCHAR(25) NOT NULL,
    direccion        VARCHAR(150) NOT NULL
);

CREATE TABLE vendedor (
    id_vendedor   INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,
    codigo        VARCHAR(6) NOT NULL,
    nombre        VARCHAR(35) NOT NULL,
    sucursal      VARCHAR(15) NOT NULL
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

