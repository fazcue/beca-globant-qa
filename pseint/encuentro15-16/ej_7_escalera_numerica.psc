Algoritmo escalera_numerica
	Definir altura Como Entero
	
	//Solicitar altura
	Escribir "Ingresa una altura:"
	Leer altura
	
	//Generar escalera numerica
	dibujarEscaleraNumerica(altura)
FinAlgoritmo

SubProceso dibujarEscaleraNumerica (altura)
	Definir i, j Como Entero
	
	//Para i desde 1 hasta altura (cada linea)
	Para i = 1 Hasta altura Con Paso 1 Hacer
		
		//Para j desde 1 hasta i (cada columna)
		Para j = 1 Hasta i Con Paso 1 Hacer
			Escribir Sin Saltar j
		FinPara
		
		//Saltar linea
		Escribir ""
		
	FinPara
	
FinSubProceso
