Algoritmo ej_6_producto_matriz_cuadrada_por_vector
	Definir matriz, vector, long Como Entero
	
	//Crear matriz y vector
	long = 3
	Dimension  matriz[long, long], vector[long]
	
	//Inicializar matriz manualmente
	matriz[0,0] = 1
	matriz[0,1] = 2
	matriz[0,2] = 3
	matriz[1,0] = 4
	matriz[1,1] = 5
	matriz[1,2] = 6
	matriz[2,0] = 7
	matriz[2,1] = 8
	matriz[2,2] = 9
	
	//Iniciarlizar vector manualmente
	vector[0] = 1
	vector[1] = 2
	vector[2] = 3
	
	//mostrar matriz
	mostrarMatrizCuadrada(matriz, long)
	Escribir " * "
	
	//mostrar vector
	mostrarVector(vector, long)
	Escribir " = "
	
	//Multiplicar matriz cuadrada por vector y mostrar resultado
	multiplicarMatrizCuadradaVector(matriz, vector, long)
	
FinAlgoritmo

SubProceso multiplicarMatrizCuadradaVector (matriz, vector, long)
	Definir i, j, vectorResultado Como Entero
	
	//Crear vector resultado
	Dimension vectorResultado[long]
	
	//Multiplicar matriz x vector
	Para i = 0 Hasta long - 1 Con Paso 1 Hacer
		
		vectorResultado[i] = 0
		
		Para j = 0 Hasta  long - 1 Con Paso 1 Hacer
			vectorResultado[i] = vectorResultado[i] + (matriz[i, j] * vector[j])
		FinPara
		
	FinPara
	
	//Mostrar vector resultante
	mostrarVector(vectorResultado, long)
	
FinSubProceso

SubProceso mostrarVector (vector, long)
	Definir i Como Entero
	
	Escribir "[ " Sin Saltar
	
	Para i = 0 Hasta long - 1 Con Paso 1 Hacer
		
		Escribir vector[i], " " Sin Saltar
		
	FinPara
	
	Escribir "]"
	
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
