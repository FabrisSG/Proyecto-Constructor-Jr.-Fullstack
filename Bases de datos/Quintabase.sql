CREATE TABLE solucion_solicitud_ciudadana(
	id_solucion_solicitud INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	id_tipo_respuesta INTEGER,
	id_estatus_solucion INTEGER,
	descripcion TEXT NOT NULL,
	evidencia VARCHAR(500) NOT NULL,
	id_atencion_solicitud INTEGER,
	id_solicitud_ciudadana INTEGER,
	FOREIGN KEY(id_tipo_respuesta) REFERENCES tipo_respuesta(id_tipo_respuesta),
	FOREIGN KEY(id_estatus_solucion) REFERENCES estatus_solucion(id_estatus_solucion)
);

CREATE TABLE tipo_respuesta(
	id_tipo_respuesta INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	tipo_respuesta VARCHAR(500) NOT NULL
);

CREATE TABLE estatus_solucion(
	id_estatus_solucion INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	estatus_solucion VARCHAR(500) NOT NULL
);

CREATE TABLE autoriza_solucion(
	id_autoriza_solucion INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	autorizar_solucion VARCHAR(100) NOT NULL,
	observaciones_rechazo TEXT NOT NULL,
	id_atencion_solicitud INTEGER NOT NULL,
	id_solicitud_ciudadana INTEGER NOT NULL
);
