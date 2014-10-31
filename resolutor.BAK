LOCAL oResolutor as Resolutor OF resolutor.PRG
DIMENSION aConceptos(2),aReglas(2),aConceptosIngresados(2)

oResolutor=CREATEOBJECT("Resolutor") 

oCodigoPrestacion=CREATEOBJECT("Concepto",1,"Codigo Prestacion","lCodigoPrestacion","C")
aConceptos(1)=oCodigoPrestacion
oCodigoObraSocial=CREATEOBJECT("Concepto",2,"Codigo Obra Social","lCodigoObraSocial","N")
aConceptos(2)=oCodigoObraSocial

aReglas(1)=CREATEOBJECT("Regla",'[1] = "420101" AND  [2] =  220',159)
aReglas(2)=CREATEOBJECT("Regla",'[1] = "420101" AND  [2] =  220',321)

aConceptosIngresados(1)=CREATEOBJECT("ConceptoIngresado",oCodigoPrestacion,"420101")
aConceptosIngresados(2)=CREATEOBJECT("ConceptoIngresado",oCodigoObraSocial,220)

lValor=oResolutor.obtenerDesicion(@aConceptos,@aReglas,@aConceptosIngresados)

IF lValor=159 THEN
	MESSAGEBOX("EXITO")
ELSE
	MESSAGEBOX("EXITO")
ENDIF


DEFINE CLASS Resolutor AS Custom
	
	
	FUNCTION obtenerDesicion(aConceptos,aReglas,aConceptosIngresados) AS Variant
		
		* Creo y valorizo los aConceptos como variables utilizando aConceptosIngresados
		FOR EACH conceptoIngresado IN aConceptosIngresados
			
			lSentenciaDeclaracion= ' LOCAL ' + conceptoIngresado.concepto.elementoPrograma
			&lSentenciaDeclaracion
			lSentenciaAsignacion=conceptoIngresado.concepto.elementoPrograma+"="+conceptoIngresado.obtenerValor()
			&lSentenciaAsignacion

		ENDFOR
		
		FOR EACH regla IN aReglas
			
			*?regla.condicion
			*lCondicion=regla.condicion
			*lValor=regla.valor
			regla=THIS.prepararReglaParaSerEvaluada(@aConceptos,regla)
			
			IF EVALUATE(regla.condicion) THEN
				*ejecutarAccion(lComando AS Character)
				RETURN regla.valor
				
			ENDIF

		ENDFOR

		RETURN .NULL.

	ENDFUNC
	
*!*		FUNCTION ejecutarAccion(lComando AS Character )
*!*			
*!*			lComando=cAcciones.accion
*!*			&lComando
*!*			RETURN
*!*			
*!*		ENDFUNC
	
	FUNCTION obtenerEntidad(lValor)
		RETURN lValor
	ENDFUNC
	
	FUNCTION prepararReglaParaSerEvaluada(aConceptos,regla AS Regla)

		* Tengo que reemplazar en la expresion con los elementos reales para cada concepto
		FOR EACH concepto IN aConceptos

			regla.condicion=STRTRAN(regla.Condicion,'['+ALLTRIM(STR(concepto.codigo))+']',concepto.elementoPrograma)

		ENDFOR

		RETURN regla
	ENDFUNC

	
ENDDEFINE


DEFINE CLASS Concepto AS Custom

	* Se utiliza para identificar al concetpo en la regla
	codigo=""
	* Es un nombre decriptivo
	nombre=""
	* Como se representa en el programa donde se vaya a evaluar
	elementoPrograma=""
	* Es el tipo de dato del mismo, esto se corresponde con VARTYPE()
	tipoDato=""
	
	PROCEDURE INIT(pCodigo,pNombre,pElementoPrograma,pTipoDato)
		THIS.codigo=pCodigo
		THIS.nombre=pNombre
		THIS.elementoPrograma=pElementoPrograma
		THIS.tipoDato=pTipoDato
	ENDPROC
	
ENDDEFINE	

DEFINE CLASS Regla AS Custom

	* Es la descripcion de lo necesario para que se cumpla la regla
	condicion=""
	valor=.F.
	
	PROCEDURE INIT(pCondicion,pValor)
		THIS.condicion=pCondicion
		THIS.valor=pValor
	ENDPROC

ENDDEFINE

DEFINE CLASS ConceptoIngresado AS Custom

	concepto=.NULL.
	valor=.F.
	
	PROCEDURE INIT(pConcepto,pValor)
		THIS.concepto=pConcepto
		THIS.valor=pValor
	ENDPROC
	
	FUNCTION obtenerValor()
			RETURN IIF(THIS.concepto.tipoDato="C", '"'+ THIS.valor + '"', ALLTRIM(STR(THIS.valor)) )
	ENDFUNC
	
	
ENDDEFINE


* Reglas para probar
*'CodigoConvenio'+' = ' +'1'+Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion>='420101' Y codigoPrestacion<='429999' , CodigoObraSocial=228
*'CodigoConvenio'+' = ' +'1'+Y INLIST(codigoEspecialidadEfector,44,45) Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999'),CodigoObraSocial=229
*!*	'CodigoConvenio'+' = ' +'1'+Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 codigoPrestacion>='420101' Y codigoPrestacion<='429999' Y CodigoPlanAfiliado=1, CodigoObraSocial=421
*!*	'CodigoConvenio'+' = ' +'1'+Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y codigoPrestacion>='420101' Y codigoPrestacion<='429999' Y codplan<>1, CodigoObraSocial=323
*!*	'CodigoConvenio'+' = ' +'1'+Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999') Y CodigoPlanAfiliado=1, CodigoObraSocial=421
*!*	'CodigoConvenio'+' = ' +'1'+Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999') Y codplan<>1, CodigoObraSocial=323
*!*	*'CodigoConvenio'+' = ' +'3'+Y CodigoObraSocial <> 210 Y CodigoPrestacion>='420101' Y codigoPrestacion<='429999' Y !INLIST(codigoEspecialidadEfector,0,13,21,57,42,206,216,219,224,226,230,232,238,249,306,316,317), CodigoObraSocial=211
*!*	*'CodigoConvenio'+' = ' +'3'+Y CodigoObraSocial <> 210 Y CodigoPrestacion>='420101' Y codigoPrestacion<='429999' Y INLIST(codigoEspecialidadEfector,0,13,21,57,42,206,216,219,224,226,230,232,238,249,306,316,317), CodigoObraSocial=214
*!*	'CodigoConvenio'+' = ' +'3'+Y CodigoObraSocial <> 210 Y !(CodigoPrestacion>='420101' Y codigoPrestacion<='429999'), CodigoObraSocial=212
*!*	'CodigoConvenio'+' = ' +'3'+Y CodigoObraSocial <> 210 
*!*	'CodigoConvenio'+' = ' +'4'+Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion='423301', CodigoObraSocial=712
*!*	'CodigoConvenio'+' = ' +'4'+Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion='423301', CodigoObraSocial=12
*!*	'CodigoConvenio'+' = ' +'5', CodigoObraSocial=70
*!*	'CodigoConvenio'+' = ' +'6', CodigoObraSocial=8
*!*	'CodigoConvenio'+' = ' +'7', CodigoObraSocial=138
*!*	'CodigoConvenio'+' = ' +'8' + Y INLIST(codigoPrestacion,'340205','340206','340207','340208'), CodigoObraSocial=167
*!*	'CodigoConvenio'+' = ' +'8' + Y !INLIST(codigoPrestacion,'340205','340206','340207','340208'), CodigoObraSocial=67
*!*	'CodigoConvenio'+' = ' +'12'+ Y CodigoPlanAfiliado=1, CodigoObraSocial=27
*!*	'CodigoConvenio'+' = ' +'12'+ Y CodigoPlanAfiliado EN(2,3), CodigoObraSocial=125
*'CodigoConvenio'+' = ' +'18'+ Y CodigoPlanAfiliado EN (611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,630,631,632,633,634,635,636,637,638,641,642,643,644) Y AfiliadoGravadoIva, CodigoObraSocial=190
*'CodigoConvenio'+' = ' +'18'+ Y INLIST(CodigoPlanAfiliado,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,630,631,632,633,634,635,636,637,638,641,642,643,644) Y AfiliadoGravadoIva, CodigoObraSocial=192
*'CodigoConvenio'+' = ' +'18'+ Y INLIST(CodigoPlanAfiliado,608,609,610,627,628,629,640) Y AfiliadoGravadoIva,CodigoObraSocial=191
*'CodigoConvenio'+' = ' +'18'+ Y INLIST(CodigoPlanAfiliado,608,609,610,627,628,629,640) Y NO AfiliadoGravadoIva, CodigoObraSocial=193


* Lista de condiciones y acciones
*CREATE CURSOR cReglas(condicion C(250),valor c(250))
*INSERT INTO cReglas(condicion,valor) VALUES('lCodigoPrestacion '+' = '+' "420101" AND  lCodigoObraSocial =  220','lCodigoObraSocialArancela'+'='+'220')
*INSERT INTO cReglas(condicion,valor) VALUES('[1] = "420101" AND  [2] =  220','lCodigoObraSocialArancela'+'='+'220')
*INSERT INTO cReglas(condicion,valor) VALUES('[1] = "420101" AND  [2] =  220','lCodigoObraSocialArancela'+'='+'220')


