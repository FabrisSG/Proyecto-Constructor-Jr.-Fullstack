
CREATE TABLE solicitudes_ciudadanas(
	id_solicitud_ciudadana INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	fecha_registro datetime,
	nombre VARCHAR(500) NOT NULL,
	apellido_paterno VARCHAR(500) NOT NULL,
	apellido_materno VARCHAR(500) NOT NULL,
	id_sexo INTEGER,
	correo_electronico VARCHAR(100) NOT NULL,
	telefono_fijo INTEGER NOT NULL,
	telefono_movil INTEGER NOT NULL,
	id_estado INTEGER,
	id_municipio INTEGER,
	codigo_postal INTEGER NOT NULL,
	colonia VARCHAR(500) NOT NULL,
	calle VARCHAR(500) NOT NULL,
	no_ext INTEGER NOT NULL,
	no_int INTEGER,
	id_tipo_solicitud INTEGER,
	id_categoria_solicitud INTEGER,
	otro VARCHAR(500) NOT NULL,
	detalle_problema TEXT NOT NULL,
	id_estatus_solicitud INTEGER,



	FOREIGN KEY(id_sexo) REFERENCES sexo(id_sexo),
	FOREIGN KEY(id_estado) REFERENCES estados(id_estado),
	FOREIGN KEY(id_municipio) REFERENCES municipios(id_municipio),
	FOREIGN KEY(id_tipo_solicitud) REFERENCES tipo_solicitud_ciudadana(id_tipo_solicitud),
	FOREIGN KEY(id_categoria_solicitud) REFERENCES categoria_solicitud_ciudadana(id_categoria_solicitud),
	FOREIGN KEY(id_estatus_solicitud) REFERENCES estatus_solicitud(id_estatus_solicitud)
);

CREATE TABLE sexo(
	id_sexo INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE estados(
	id_estado INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	estado VARCHAR(500) NOT NULL
);

CREATE TABLE municipios(
	id_municipio INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	id_estado INTEGER,
	municipio VARCHAR(500),
	FOREIGN KEY(id_estado) REFERENCES estados(id_estado)
);

CREATE TABLE tipo_solicitud_ciudadana(
	id_tipo_solicitud INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	tipo_solicitud VARCHAR(500)
);

CREATE TABLE categoria_solicitud_ciudadana(
	id_categoria_solicitud INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	categoria_solicitud VARCHAR(500)
);



CREATE TABLE estatus_solicitud(
	id_estatus_solicitud INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	estatus_solicitud VARCHAR(100)
);
