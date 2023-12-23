CREATE TABLE informacion_grafica_complementaria(
	id_folio INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	fecha_registro datetime,
	descripcion TEXT NOT NULL,
	adjuntar_evidencia VARCHAR(500),
	id_solicitud_ciudadana INTEGER NOT NULL
);
