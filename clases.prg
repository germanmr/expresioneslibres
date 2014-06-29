
DEFINE CLASS Elemento AS Custom
	tipo=""
	codigo=""
	valor=""
	
	PROCEDURE INIT(pTipo,pCodigo,pValor)
		THIS.tipo=pTipo
		THIS.codigo=pCodigo
		THIS.valor=pValor
	ENDPROC
	
ENDDEFINE

DEFINE CLASS Pais AS Custom
	codigo=""
	nombre=""
	
	PROCEDURE INIT(pCodigo,pNombre)
		THIS.codigo=pCodigo
		THIS.nombre=pNombre
	ENDPROC
	
ENDDEFINE


DEFINE CLASS MapElement AS Custom
	clave=""
	valor=""
	
	PROCEDURE INIT(pClave,pValor)
		THIS.clave=pClave
		THIS.valor=pValor
	ENDPROC
	
ENDDEFINE