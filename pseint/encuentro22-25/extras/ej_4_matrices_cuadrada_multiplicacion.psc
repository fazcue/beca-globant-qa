Algoritmo ej_4_matrices_cuadrada_multiplicacion
	Definir matrizA, matrizB, longMatriz, aux Como Entero
	
	//Crear matrices
	longMatriz = 3
	Dimension matrizA[longMatriz, longMatriz], matrizB[longMatriz, longMatriz]
	
	//Inicializar matrices manualmente :/
	matrizA[0,0] = 1
	matrizA[0,1] = 2
	matrizA[0,2] = 3
	matrizA[1,0] = 4
	matrizA[1,1] = 5
	matrizA[1,2] = 6
	matrizA[2,0] = 7
	matrizA[2,1] = 8
	matrizA[2,2] = 9
	
	matrizB[0,0] = 1
	matrizB[0,1] = 2
	matrizB[0,2] = 3
	matrizB[1,0] = 4
	matrizB[1,1] = 5
	matrizB[1,2] = 6
	matrizB[2,0] = 7
	matrizB[2,1] = 8
	matrizB[2,2] = 9
	
	//Mostrar matrices A y B
	mostrarMatrizCuadrada(matrizA, longMatriz)
	Escribir " * "
	mostrarMatrizCuadrada(matrizB, longMatriz)
	
	//Calcular multiplicacion y mostrar resultado
	Escribir " = "
	multiplicarMatricesCuadradas(matrizA, matrizB, longMatriz)
	
FinAlgoritmo

SubProceso multiplicarMatricesCuadradas (matrizA, matrizB, longMatriz)
	Definir i, j, k, matrizResultado Como Entero
	
	//Crear matriz resultado
	Dimension matrizResultado[longMatriz, longMatriz]
	
	//Realizar multiplicacion
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			matrizResultado[i,j] = 0
			
			Para k = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
				matrizResultado[i,j] = matrizResultado[i,j] + (matrizA[i,k] * matrizB[k,j])
			FinPara
			
		FinPara
		
	FinPara
	
	//Mostrar matriz resultado
	mostrarMatrizCuadrada(matrizResultado, longMatriz)
	
FinSubProceso

SubProceso mostrarMatrizCuadrada (matriz, longMatriz)
	Definir i, j Como Entero
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Escribir "  [ " Sin Saltar
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			Escribir matriz[i,j], " " Sin Saltar
			
		FinPara
		
		Escribir "]"
		
	FinPara
	
FinSubProceso