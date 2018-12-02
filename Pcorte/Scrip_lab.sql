#create database BDlab;

use BDlab;

#create table Administrador(
#id_Adm INTEGER NOT NULL,
#usuario VARCHAR(30),
#clave VARCHAR(30),
#apellido VARCHAR(30),
#nombre VARCHAR(30),
#PRIMARY KEY (id_Adm)
#);

#create table Sucursal(
#id_sucursal INTEGER NOT NULL,
#nombre VARCHAR(30),
#direccion VARCHAR(30),
#id_Adm INTEGER NOT NULL,
#PRIMARY KEY(id_sucursal),
#FOREIGN KEY(id_Adm) REFERENCES Administrador(id_Adm)
#);

#create table Vendedor(
#id_vendedor INTEGER NOT NULL,
#usuario VARCHAR(30),
#clave VARCHAR(30),
#id_sucursal INTEGER NOT NULL,
#nombre VARCHAR(30),
#apellido VARCHAR(30),
#PRIMARY KEY(id_vendedor),
#FOREIGN KEY(id_sucursal) REFERENCES Sucursal(id_sucursal)
#);ventas

#create table Caja(
#id_caja INTEGER auto_increment  NOT NULL,
#Dinero  DOUBLE,
#id_sucursal INTEGER NOT NULL,
#PRIMARY KEY(id_caja),
#FOREIGN KEY(id_sucursal) REFERENCES Sucursal (id_sucursal)
#);

#create table Producto(
#id_producto INTEGER NOT NULL,
#nombre VARCHAR(30),
#precio DOUBLE,
#cantidad INTEGER NOT NULL,
#id_sucursal INTEGER NOT NULL,
#PRIMARY KEY(id_producto),
#FOREIGN KEY(id_sucursal) REFERENCES Sucursal (id_sucursal));

#create table ventas(
#id_ventas INTEGER auto_increment NOT NULL,
#valor 	DOUBLE ,
#id_vendedor INTEGER ,
#id_caja INTEGER ,
#dato DATE ,
#PRIMARY KEY(id_ventas),
#FOREIGN KEY(id_vendedor) REFERENCES  Vendedor (id_vendedor),
#FOREIGN KEY(id_caja) REFERENCES Caja (id_caja)
#);


#INSERT INTO Administrador(id_Adm,usuario,clave,apellido,nombre) VALUES(1,'luis12','ll','Escobar','Luis');

#INSERT INTO sucursal(id_sucursal,nombre,direccion,id_Adm) VALUES(1,'calle 78','diagon 75 #25a',1);
#INSERT INTO caja(Dinero,id_sucursal) VALUES(0.0,1);


#create table item_vent(

#id_item INTEGER auto_increment NOT NULL,
#cantidad INTEGER NOT NULL,
#valor DOUBLE NOT NULL,
#id_ventas INTEGER NOT NULL,
#id_producto INTEGER NOT NULL,
#PRIMARY KEY(id_item),
#FOREIGN KEY(id_ventas) REFERENCES ventas(id_ventas),
#FOREIGN KEY(id_producto) REFERENCES Producto (id_producto)
#);




#SELECT item_vent.id_producto,producto.nombre, sum(item_vent.cantidad) as cantidad ,
#(select sum(item_vent.cantidad)*100/(select sum(item_vent.cantidad)from item_vent
#inner join producto on(item_vent.id_producto = producto.id_producto) ) )as porcentaje
#FROM item_vent inner join producto on(item_vent.id_producto = producto.id_producto)
#group by item_vent.id_producto;

#SELECT ventas.id_vendedor,vendedor.nombre, COUNT(*)as total
#from vendedor inner join ventas on(vendedor.id_vendedor=ventas.id_vendedor)
#group by vendedor.id_vendedor;

