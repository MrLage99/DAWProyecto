
Create database ProyectoDaw;



Create table Rol(
idRol Int NOT NULL AUTO_INCREMENT,
rol ENUM('admin','employer','user'),
PRIMARY KEY (idRol)

);



Create table Usuario(
idUsuario INT NOT NULL AUTO_INCREMENT,
idRol int,
nombre varchar(40),
apellidos varchar(60),
correo varchar(40),
contraseña varchar(30),
fechaNacimiento datetime NOT NULL,
sexo varchar(15),
PRIMARY KEY (idUsuario),
CONSTRAINT Fk_RolUsuario FOREIGN KEY(idRol) REFERENCES Rol(idRol)


);



Create table Juego(
idJuego int,
nombre varchar(50),
codigo varchar(50),
categoria varchar(50),
precio float(5,2),
imagen BLOB,
fechaLanzamiento datetime NOT NULL,
descripcion varchar(500),
estado ENUM('En stock','Fuera de stock'),
plataforma ENUM('PC','PS3','PS4','XBOX','NINTENDO SWICHT'),
PRIMARY KEY (idJuego)
);


Create table Pedidos(
idPedidos int NOT NULL AUTO_INCREMENT,
idUsuario int,
idJuego int,
PRIMARY KEY (idPedidos),
CONSTRAINT Fk_UsuarioPedidos FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT Fk_JuegoPedidos FOREIGN KEY(idJuego) REFERENCES Juego(idJuego)

);


Create table Wishlist(
idWishlist int NOT NULL AUTO_INCREMENT,
idUsuario int,
idJuego int,
PRIMARY KEY (idWishlist),
CONSTRAINT Fk_UsuarioWishList FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario),
CONSTRAINT Fk_JuegoWishList FOREIGN KEY(idJuego) REFERENCES Juego(idJuego)

);