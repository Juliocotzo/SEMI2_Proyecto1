USE PROYECTO_1
GO
SELECT cl.codigocliente, ar.codigoarticulo,su.codigosucursal,re.region,re.departamento,re.zona,
ve.codigo,f.fecha,v.cantidad, v.preciounitario FROM
venta v
INNER JOIN cliente cl
ON cl.id_cliente = v.cliente_id_cliente
INNER JOIN articulo ar
ON ar.id_articulo = v.articulo_id_articulo
INNER JOIN sucursal su
ON su.id_sucursal = v.sucursal_id_sucursal
INNER JOIN region re
ON re.id_region = v.region_id_region
INNER JOIN vendedor ve
ON ve.id_vendedor = v.vendedor_id_vendedor
INNER JOIN fecha f
ON f.id_fecha = v.fecha_id_fecha
GO