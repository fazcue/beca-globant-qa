Algoritmo ej_3_vectores_nombres_longitudes
	Definir nombres Como Caracter
	Definir longitudes, longVector Como Entero
	
	//Solicitar longitud
	ingresarLongitud(longVector)
	
	//Crear vectores
	Dimension nombres[longVector], longitudes[longVector]
	
	//Ingresar nombres
	ingresarNombres(nombres, longVector)
	
	//Calcular longitud de nombres y guardar en vector "longitudes"
	calcularLongitudNombres(nombres, longitudes, longVector)
	
	//Mostrar nombres y su longitud correspondiente
	mostrarNombresConLongitud(nombres, longitudes, longVector)
	
FinAlgoritmo

SubProceso ingresarLongitud (longVector Por Referencia)
	Hacer
		Escribir "Ingresa la longitud de los vectores:" Sin Saltar
		Leer longVector
		
		Si longVector < 1 Entonces
			Escribir "Longitud no válida."
			Escribir ""
		FinSi
	Mientras Que longVector < 1
FinSubProceso

SubProceso ingresarNombres (nombres, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		
		Escribir "Ingresar nombre #", i+1, ":" Sin Saltar
		Leer nombres[i]
		
	FinPara
	
FinSubProceso

SubProceso calcularLongitudNombres (nombres, longitudes, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		longitudes[i] = Longitud(nombres[i])
	FinPara
	
FinSubProceso

SubProceso mostrarNombresConLongitud (nombres, longitudes, longVector)
	Definir i Como Entero
	
	Escribir ""
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		Escribir "Nombre: ", nombres[i], " | longitud: ", longitudes[i]
	FinPara
	
FinSubProceso
	