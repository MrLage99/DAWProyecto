

INSERT INTO ROL (rol)
values  ('admin');
INSERT INTO ROL (rol)
values ('employer');
INSERT INTO ROL (rol)
values ('user');





INSERT INTO Usuario (idRol,nombre,apellidos,correo,contraseña,fechaNacimiento,sexo)
values (1,"Ismael","Lage Groba","lage@gmail.com","abcd1234.","1998-12-09","masculino");

INSERT INTO Usuario (idRol,nombre,apellidos,correo,contraseña,fechaNacimiento,sexo)
values (2,"Javi","Lage Lopez","javi@gmail.com","abcd1234.","2004-12-09","masculino");

INSERT INTO Usuario (idRol,nombre,apellidos,correo,contraseña,fechaNacimiento,sexo)
values (3,"Jose","Garcia Groba","jose@gmail.com","abcd1234.","2004-12-09","masculino");




INSERT INTO Juego (idJuego,nombre,codigo,categoria,precio,imagen,fechaLanzamiento,descripcion,estado,plataforma)
values (1,"CALL OF DUTY","12HJ-4567-ART3-RY45","shooter",59.99,LOAD_FILE("C:\Users\mrlag\Documents\GitHub\DAWProyecto\Miscosas\Imagenes\CODMW3.png"),"2010-10-21","Juego hecho por Activision","En stock","PC");



INSERT INTO Wishlist(IdUsuario,IdJuego)
values (1,1);



INSERT INTO Pedidos(IdUsuario,IdJuego)
values (1,1);


