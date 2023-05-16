Algoritmo ej_3_matriz_nxm_suma_elementos
	Definir matriz, filas, columnas Como Entero
	
	//Crear matriz n*m
	Escribir "Indica la cantidad de filas:" Sin Saltar
	Leer filas
	
	Escribir "Indica la cantidad de columnas:" Sin Saltar
	Leer columnas
	
	Dimension matriz[filas,columnas]
	
	//Rellenar matriz aleatoriamente
	rellenarMatrizAleatoriamente(matriz, filas, columnas)
	
	//Mostrar matriz (para verificar res)
	mostrarMatriz(matriz, filas, columnas)
	
	//Calcular y mostrar suma de elementos de la matriz
	sumarMatriz(matriz, filas, columnas)
	
FinAlgoritmo

SubProceso rellenarMatrizAleatoriamente (matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			matriz[i,j] = Aleatorio(1,9)
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso sumarMatriz (matriz, filas, columnas)
	Definir i, j, suma Como Entero
	
	//Variables
	suma = 0
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			suma = suma + matriz[i,j]
			
		FinPara
		
	FinPara
	
	Escribir "La suma de los elementos de la matriz es igual a: ", suma
	
FinSubProceso

SubProceso mostrarMatriz (matriz, filas, columnas)
	Definir i, j Como Entero
	
	Escribir "["
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Escribir "  [ " Sin Saltar
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			Escribir matriz[i,j], " " Sin Saltar
			
		FinPara
		
		Escribir "]" Sin Saltar
		Escribir ""
		
	FinPara
	
	Escribir "]"
	Escribir ""
	
FinSubProceso
