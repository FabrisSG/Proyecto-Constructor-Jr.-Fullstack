CREATE TABLE autoriza_solicitud(
	id_autoriza_solicitud INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	id_solicitud_ciudadana INTEGER NOT NULL,
	autorizar_solicitud VARCHAR(100) NOT NULL,
	observacion_rechazo TEXT NOT NULL),
	fecha_autorizacion datetime
);
