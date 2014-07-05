
* Esto representa un componente de una expresion, concepto, operador 
DEFINE CLASS Elemento AS Custom
	* Codigo identificatorio del elemento
	codigo=""
	* Valor del mismo
	valor=""
	* Tipo de dato VFP(VARTYPE()) del mismo
	tipo=""
	
	PROCEDURE INIT(pTipo,pCodigo,pValor)
		THIS.tipo=pTipo
		THIS.codigo=pCodigo
		THIS.valor=pValor
	ENDPROC

ENDDEFINE

*!*	DEFINE CLASS Concepto as Custom 
*!*		
*!*		* El tipo de VFP(VARTYPE()) del concepto
*!*		tipo=""
*!*		elemento=.NULL.
*!*		
*!*		PROCEDURE INIT(pTipo,pElemento)
*!*			THIS.tipo=pTipo
*!*			THIS.elemento=pElemento
*!*		ENDPROC
*!*		
*!*	ENDDEFINE


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