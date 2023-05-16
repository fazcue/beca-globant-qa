Algoritmo ej_1_vector_rellenar_imprimir_valores
	Definir vector, LONG_VECTOR Como Entero
	
	LONG_VECTOR = 5
	Dimension vector[LONG_VECTOR]
	
	ingresarValores(vector, LONG_VECTOR)
	
	imprimirValores(vector, LONG_VECTOR)
	
FinAlgoritmo

SubProceso ingresarValores (vector, LONG_VECTOR)
	Definir i Como Entero
	
	Para i=0 Hasta LONG_VECTOR - 1 Con Paso 1 Hacer
		
		Escribir "#", i+1, " Ingresar un numero:" Sin Saltar
		Leer vector[i]
		
	FinPara
FinSubProceso

SubProceso imprimirValores (vector, LONG_VECTOR)
	Definir i Como Entero
	
	Para i=0 Hasta LONG_VECTOR - 1 Con Paso 1 Hacer
		
		Escribir "#", i+1, ": " Sin Saltar
		Escribir vector[i]
		
	FinPara
FinSubProceso
