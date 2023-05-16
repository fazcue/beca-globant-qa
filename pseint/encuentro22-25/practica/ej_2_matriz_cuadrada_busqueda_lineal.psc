Algoritmo ej_2_matriz_cuadrada_busqueda_lineal
	Definir matriz, longMatriz Como Entero
	
	//Crear matriz cuadrada 5x5
	longMatriz = 5
	Dimension matriz[longMatriz, longMatriz]
	
	//Rellenar matriz cuadrada aleatoriamente
	rellenarMatrizCuadradaAleatoriamente(matriz, longMatriz)
	
	//Mostrar matriz cuadrada (para verificar res)
	mostrarMatrizCuadrada(matriz, longMatriz)
	
	//Buscar elemento y mostrar coordenadas [i,j]
	buscarElementoMatrizCuadrada(matriz, longMatriz)
	
FinAlgoritmo

SubProceso rellenarMatrizCuadradaAleatoriamente (matriz, longMatriz)
	Definir i, j Como Entero
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			matriz[i,j] = Aleatorio(1,9)
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso buscarElementoMatrizCuadrada (matriz, longMatriz)
	Definir i, j, num, count Como Entero
	
	//Variables
	count = 0
	
	//Solicitar num a buscar
	Escribir "Ingresa el numero a buscar:" Sin Saltar
	Leer num
	Escribir ""
	
	//Realizar busqueda	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			Si matriz[i,j] == num Entonces
				Escribir "Numero ", num, " encontrado en coordenada: [", i, ", ", j, "]"
				count = count + 1
			FinSi
			
		FinPara

	FinPara
	
	Si count == 0 Entonces
		Escribir "Numero ", num, " no se encuentra en la matriz."
	FinSi
	
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