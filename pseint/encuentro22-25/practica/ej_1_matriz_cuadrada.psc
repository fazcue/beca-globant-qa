Algoritmo ej_1_matriz_cuadrada
	Definir matriz, longMatriz Como Entero
	
	//Crear matriz cuadrada 3x3
	longMatriz = 3
	Dimension matriz[longMatriz,longMatriz]
	
	//Rellenar matriz cuadrada con valores ingresados por usuario
	ingresarValoresMatrizCuadrada(matriz, longMatriz)
	
	//Mostrar matriz cuadrada
	mostrarMatrizCuadrada(matriz, longMatriz)
	
FinAlgoritmo

SubProceso ingresarValoresMatrizCuadrada (matriz, longMatriz)
	Definir i, j Como Entero
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			Escribir "[", i, ",", j, "] Ingresa un valor:" Sin Saltar
			Leer matriz[i,j]
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso mostrarMatrizCuadrada (matriz, longMatriz)
	Definir i, j Como Entero
	
	Escribir "["
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Escribir "  [ " Sin Saltar
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			Escribir matriz[i,j], " " Sin Saltar
			
		FinPara
		
		Escribir "]" Sin Saltar
		Escribir ""
		
	FinPara
	
	Escribir "]"
	
FinSubProceso
