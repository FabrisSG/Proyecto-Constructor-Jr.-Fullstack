CREATE TABLE atencion_solicitud_ciudadana(
	id_atencion_solicitud INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	fecha_registro date,
	nombre VARCHAR(500) NOT NULL,
	apellido_paterno VARCHAR(500) NOT NULL,
	apellido_materno VARCHAR(500) NOT NULL,
	correo_electronico VARCHAR(500) NOT NULL,
	telefono INTEGER NOT NULL,
	dias_atencion INTEGER NOT NULL,
	fecha_compromiso date,
	id_tipo_servicio INTEGER,
	id_solicitud_ciudadana INTEGER,
	FOREIGN KEY(id_tipo_servicio) REFERENCES tipo_servicio(id_tipo_servicio)
);

CREATE TABLE tipo_servicio(
	id_tipo_servicio INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	tipo_servicio VARCHAR(500)
);
