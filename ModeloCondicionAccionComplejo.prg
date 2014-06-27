
Es mas facil o dificl de entender para el usuario??

Ventajas:
	Puedo utilizar la combinacion que quiera
	Las puede llegar a definir un POWER USER o desarrolador
	Es mas facil de mantener, si son pocos casos, para el usuario
	NO Complicada la interfaz para cargar( esto es igual que el modelo actual )


Desventajas:
	Rendimiento???
	Es solo para casos especiales??
	Mas dificl de chequear duplicados y casos que se solapan


								Reglas dinamicas:

		Componentes
	
1) Condicion:
	
	Conceptos disponibles
CodigoConvenio, CodigoPrestacion, CodigoPlanAfiliado, Fecha, Prestador, Efector, CondicionAfiliado

	[Concepto] + [Operador]

2) Accion:
	
	Norma: 
		DiasCarencia
		AuditoriaMedica
		CantidadEnPeriodo
			Cantidad: Un Numero
			Periodo: 
				Tipo Periodo:
				Codigo:

		Mensaje
	Observaciones:
	Norma Facturacion:

Ejemplos:

CodigoConvenio= 1 Y CodigoPrestacion ENTRE '420000' Y '429999' Y CodigoPlanAfiliado ENTRE 1 Y 200 ENTONCES accion

CodigoConvenio= 1 Y CodigoPrestacion ENTRE '420000' Y '429999' Y CodigoPlanAfiliado ENTRE 1 Y 200 Y prestador=64758 Y especialidadefector= 44 ENTONCES
	

Evaluacion:

	Reglas:

	CodigoConvenio= 1 Y CodigoPrestacion ENTRE '420000' Y '429999' Y CodigoPlanAfiliado ENTRE 1 Y 200 ENTONCES accion

	CodigoConvenio= 1 Y CodigoDelegacion=26  Y CodigoPrestacion ENTRE '420000' Y '429999' Y CodigoPlanAfiliado ENTRE 1 Y 200 Y prestador=64758 Y especialidadefector= 44 ENTONCES


-) Obtengo la lista de Reglas

-) p/Cada Regla
	
	IF ConvenioIngresado= 1 Y CodigoPrestacionIngresado ENTRE '420000' Y '429999' Y CodigoPlanAfiliadoIngresado ENTRE 1 Y 200 THEN
		Ejecuto accion ( Esto seria tomar la norma asociada )
	ENDIF

	