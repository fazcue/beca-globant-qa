Algoritmo ej_1_matriz_cuadrada_aleatoria
	Definir matriz, longMatriz Como Entero
	
	//Crear matriz cuadrada
	longMatriz = 3
	Dimension matriz[longMatriz, longMatriz]
	
	//Rellenar aleatoriamente
	rellenarMatrizCuadradaAleatoriamente(matriz, longMatriz)
	
	//Mostar matriz
	mostrarMatrizCuadrada(matriz, longMatriz)
	
FinAlgoritmo

SubProceso rellenarMatrizCuadradaAleatoriamente (matriz, longMatriz)
	Definir i, j Como Entero
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			matriz[i,j] = Aleatorio(1,9)
			
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
		
		Escribir "]"
		
	FinPara
	
	Escribir "]"
	
FinSubProceso
	