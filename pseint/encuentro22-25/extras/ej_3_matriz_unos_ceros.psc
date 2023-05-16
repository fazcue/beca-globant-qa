Algoritmo ej_3_matriz_unos_ceros
	Definir matriz, filas, columnas Como Entero
	
	//Crear matriz 5x15
	filas = 5
	columnas = 15
	Dimension matriz[filas, columnas]
	
	//Rellenar matriz
	rellenarMatriz(matriz, filas, columnas)
	
	//Mostrar matriz
	mostrarMatriz(matriz, filas, columnas)
	
FinAlgoritmo

SubProceso rellenarMatriz (matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			Si (i == 0) O (i == filas - 1) O (j == 0) O (j == columnas - 1) Entonces
				matriz[i,j] = 1
			SiNo
				matriz[i,j] = 0
			FinSi
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso mostrarMatriz (matriz, filas, columnas)
	Definir i, j Como Entero
	
	Escribir "["
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Escribir "  [ " Sin Saltar
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			Escribir matriz[i,j], " " Sin Saltar
			
		FinPara
		
		Escribir "]"
		
	FinPara
	
	Escribir "]"
	
FinSubProceso
	