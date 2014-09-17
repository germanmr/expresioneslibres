*yo soy el cambio del conflicto desde github

Modelo:

* Busco en una lista de reglas si alguna cumple con la condicion
* si se da esto ejecuto la accion asociada

SCAN
	IF Condicion THEN
		* accion
		* esto es devolver cierto valor!!!
	ENDIF
ENDSCAN

Operadores:
Y AND
O OR
= IGUAL
<> DISTINTO
<= MENOR IGUAL
=> MAYOR IGUAL
EN INLIST() - LUEGO SE PUEDE DIVIDIR EN N inlist!!!!! EN2INLIST()

Conceptos disponibles
CodigoObraSocial, CodigoConvenio, CodigoEspecialidadEfector, CodigoPrestacion, AfiliadoGravadoIva,  CodigoProfesionPrestador, MatriculaProfesionalPrestador

Accion o valor de resultado???


LISTA DE REGLAS:

CodigoConvenio=1 Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion>='420101' Y codigoPrestacion<='429999' , CodigoObraSocial=228
CodigoConvenio=1 Y INLIST(codigoEspecialidadEfector,44,45) Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999'),CodigoObraSocial=229
CodigoConvenio=1 Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 codigoPrestacion>='420101' Y codigoPrestacion<='429999' Y CodigoPlanAfiliado=1, CodigoObraSocial=421
CodigoConvenio=1 Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y codigoPrestacion>='420101' Y codigoPrestacion<='429999' Y codplan<>1, CodigoObraSocial=323
CodigoConvenio=1 Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999') Y CodigoPlanAfiliado=1, CodigoObraSocial=421
CodigoConvenio=1 Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999') Y codplan<>1, CodigoObraSocial=323
CodigoConvenio=3 Y CodigoObraSocial <> 210 Y CodigoPrestacion>='420101' Y codigoPrestacion<='429999' Y !INLIST(codigoEspecialidadEfector,0,13,21,57,42,206,216,219,224,226,230,232,238,249,306,316,317), CodigoObraSocial=211
CodigoConvenio=3 Y CodigoObraSocial <> 210 Y CodigoPrestacion>='420101' Y codigoPrestacion<='429999' Y INLIST(codigoEspecialidadEfector,0,13,21,57,42,206,216,219,224,226,230,232,238,249,306,316,317), CodigoObraSocial=214
CodigoConvenio=3 Y CodigoObraSocial <> 210 Y !(CodigoPrestacion>='420101' Y codigoPrestacion<='429999'), CodigoObraSocial=212
CodigoConvenio=3 Y CodigoObraSocial <> 210 
CodigoConvenio=4 Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion='423301', CodigoObraSocial=712
CodigoConvenio=4 Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion='423301', CodigoObraSocial=12
CodigoConvenio=5, CodigoObraSocial=70
CodigoConvenio=6, CodigoObraSocial=8
CodigoConvenio=7, CodigoObraSocial=138
CodigoConvenio=8 Y INLIST(codigoPrestacion,'340205','340206','340207','340208'), CodigoObraSocial=167
CodigoConvenio=8 Y !INLIST(codigoPrestacion,'340205','340206','340207','340208'), CodigoObraSocial=67
CodigoConvenio=12 Y CodigoPlanAfiliado=1, CodigoObraSocial=27
CodigoConvenio=12 Y INLIST(CodigoPlanAfiliado,2,3), CodigoObraSocial=125

CodigoConvenio=18 Y 
	CodigoPlanAfiliado,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,630,631,632,633,634,635,636,637,638,641,642,643,644
	Y AfiliadoGravadoIva, CodigoObraSocial=190

CodigoConvenio=18 Y INLIST(CodigoPlanAfiliado,611,612,613,614,615,616,617,618,619,620) .OR. INLIST(CodigoPlanAfiliado,621,622,623,624,625,630,631,632,633,634,635,636,637,638,641,642,643,644) Y AfiliadoGravadoIva, CodigoObraSocial=192
CodigoConvenio=18 Y INLIST(CodigoPlanAfiliado,608,609,610,627,628,629,640) Y AfiliadoGravadoIva,CodigoObraSocial=191
CodigoConvenio=18 Y INLIST(CodigoPlanAfiliado,608,609,610,627,628,629,640) Y NO AfiliadoGravadoIva, CodigoObraSocial=193



CodigoConvenio,
codigoEspecialidadEfector,
codigoPrestacion,
CodigoObraSocial,
CodigoProfesionPrestador, 
MatriculaProfesionalPrestador,
CodigoPlanAfiliado,
CodigoObraSocial,
* Esto es un conflicto con otro branch

Modelo:

* Busco en una lista de reglas si alguna cumple con la condicion
* si se da esto ejecuto la accion asociada

SCAN
	IF Condicion THEN
		* accion
		* esto es devolver cierto valor!!!
	ENDIF
ENDSCAN

Operadores:
Y AND
O OR
= IGUAL
<> DISTINTO
<= MENOR IGUAL
=> MAYOR IGUAL
EN INLIST() - LUEGO SE PUEDE DIVIDIR EN N inlist!!!!! EN2INLIST()

Conceptos disponibles
CodigoObraSocial, CodigoConvenio, CodigoEspecialidadEfector, CodigoPrestacion, AfiliadoGravadoIva,  CodigoProfesionPrestador, MatriculaProfesionalPrestador

Accion o valor de resultado???


LISTA DE REGLAS:

CodigoConvenio=1 Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion>='420101' Y codigoPrestacion<='429999' , CodigoObraSocial=228
CodigoConvenio=1 Y INLIST(codigoEspecialidadEfector,44,45) Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999'),CodigoObraSocial=229
CodigoConvenio=1 Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 codigoPrestacion>='420101' Y codigoPrestacion<='429999' Y CodigoPlanAfiliado=1, CodigoObraSocial=421
CodigoConvenio=1 Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y codigoPrestacion>='420101' Y codigoPrestacion<='429999' Y codplan<>1, CodigoObraSocial=323
CodigoConvenio=1 Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999') Y CodigoPlanAfiliado=1, CodigoObraSocial=421
CodigoConvenio=1 Y CodigoProfesionPrestador=4 Y MatriculaProfesionalPrestador=69211 Y !(codigoPrestacion>='420101' Y codigoPrestacion<='429999') Y codplan<>1, CodigoObraSocial=323
CodigoConvenio=3 Y CodigoObraSocial <> 210 Y CodigoPrestacion>='420101' Y codigoPrestacion<='429999' Y !INLIST(codigoEspecialidadEfector,0,13,21,57,42,206,216,219,224,226,230,232,238,249,306,316,317), CodigoObraSocial=211
CodigoConvenio=3 Y CodigoObraSocial <> 210 Y CodigoPrestacion>='420101' Y codigoPrestacion<='429999' Y INLIST(codigoEspecialidadEfector,0,13,21,57,42,206,216,219,224,226,230,232,238,249,306,316,317), CodigoObraSocial=214
CodigoConvenio=3 Y CodigoObraSocial <> 210 Y !(CodigoPrestacion>='420101' Y codigoPrestacion<='429999'), CodigoObraSocial=212
CodigoConvenio=3 Y CodigoObraSocial <> 210 
CodigoConvenio=4 Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion='423301', CodigoObraSocial=712
CodigoConvenio=4 Y INLIST(codigoEspecialidadEfector,44,45) Y codigoPrestacion='423301', CodigoObraSocial=12
CodigoConvenio=5, CodigoObraSocial=70
CodigoConvenio=6, CodigoObraSocial=8
CodigoConvenio=7, CodigoObraSocial=138
CodigoConvenio=8 Y INLIST(codigoPrestacion,'340205','340206','340207','340208'), CodigoObraSocial=167
CodigoConvenio=8 Y !INLIST(codigoPrestacion,'340205','340206','340207','340208'), CodigoObraSocial=67
CodigoConvenio=12 Y CodigoPlanAfiliado=1, CodigoObraSocial=27
CodigoConvenio=12 Y INLIST(CodigoPlanAfiliado,2,3), CodigoObraSocial=125

CodigoConvenio=18 Y 
	CodigoPlanAfiliado,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,630,631,632,633,634,635,636,637,638,641,642,643,644
	Y AfiliadoGravadoIva, CodigoObraSocial=190

CodigoConvenio=18 Y INLIST(CodigoPlanAfiliado,611,612,613,614,615,616,617,618,619,620) .OR. INLIST(CodigoPlanAfiliado,621,622,623,624,625,630,631,632,633,634,635,636,637,638,641,642,643,644) Y AfiliadoGravadoIva, CodigoObraSocial=192
CodigoConvenio=18 Y INLIST(CodigoPlanAfiliado,608,609,610,627,628,629,640) Y AfiliadoGravadoIva,CodigoObraSocial=191
CodigoConvenio=18 Y INLIST(CodigoPlanAfiliado,608,609,610,627,628,629,640) Y NO AfiliadoGravadoIva, CodigoObraSocial=193



CodigoConvenio,
codigoEspecialidadEfector,
codigoPrestacion,
CodigoObraSocial,
CodigoProfesionPrestador, 
MatriculaProfesionalPrestador,
CodigoPlanAfiliado,
CodigoObraSocial,
