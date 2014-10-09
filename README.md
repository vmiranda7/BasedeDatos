Ejercicios de la parte de BASE DE DATOS (Tema4)

Crear el usuario y la Base de Datos.
1. Desde el terminal  ejercutar 
	> cd c:\..\..\sql 
	**Carpeta donde se encuentran los archivos .sql**
	
2. Ejercutar Mysql
	> mysql -u root -p
	> Contraseña: *...
	> source crearUsuario.sql
	> exit

3.Una vez creado el usuario ejecutar la base de datos con este usuario creado.
	>mysql -u sqluser -p
	> Contraseña: sqluser
	> source crearBBDD.sql

4. Ya teneis en funcionamiento la base de Datos y podemos ejecutar el programa

 
Para su funcionamiento:
	-> Boton derecho en src/main/java
	-> Run As
	-> Java Application
		