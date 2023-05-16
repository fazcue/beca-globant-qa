Algoritmo ej_4_matriz_cuadrada_diagonal_principal_ceros
	Definir matriz, longMatriz Como Entero
	
	//Crear matriz cuadrada
	longMatriz = 5
	Dimension matriz[longMatriz, longMatriz]
	
	//Rellenar matriz cuadrada aleatoriamente, con ceros en la diagonal principal
	rellenarMatrizCuadradaAleatoriamenteDiagonalCeros(matriz, longMatriz)
	
	//Mostrar matriz cuadrada (para verificar res)
	mostrarMatrizCuadrada(matriz, longMatriz)
	
FinAlgoritmo

SubProceso rellenarMatrizCuadradaAleatoriamenteDiagonalCeros (matriz, longMatriz)
	Definir i, j Como Entero
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			Si i == j Entonces
				matriz[i,j] = 0
			SiNo
				matriz[i,j] = Aleatorio(1,9)
			FinSi
			
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
	Escribir ""
	
FinSubProceso