//Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
//ceros.
//Por ejemplo, nuestro matriz final debería verse así:
//	???????????????
//	???????????????
//	???????????????
//	???????????????
//	???????????????

Algoritmo ej_3_extras
	Definir matriz, filas, columnas Como Entero
	
	filas=10
	columnas=15
	Dimension matriz[filas, columnas]
	
	rellenarMatriz(matriz, filas, columnas)
	
	mostrarMatriz(matriz, filas, columnas)
	
FinAlgoritmo

SubProceso rellenarMatriz (matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Hacer
			
			//Relleno con unos
			Si i == 0 O i == filas - 1 O j == 0 O j == columnas - 1 Entonces
				matriz[i,j] = 1
			SiNo
				matriz[i,j] = 0
			FinSi
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Hacer
			
			Escribir matriz[i,j] Sin Saltar
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	