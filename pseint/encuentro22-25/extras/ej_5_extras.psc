//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
//primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
//deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
//la matriz de la siguiente forma:
//	3 + 5 = 8
//	4 + 3 = 7
//	1 + 4 = 5

Algoritmo ej_5_extras
	Definir matriz, filas, columnas Como Entero
	
	//Crear matriz 3 x n
	columnas = 3
	
	Escribir "Indica la cantidad de filas: " Sin Saltar
	Leer filas
	
	Dimension matriz[filas, columnas]
	
	//Rellenar matriz
	rellenarMatriz(matriz, filas, columnas)
	
	mostrarMatriz(matriz, filas, columnas)
	
FinAlgoritmo

SubProceso rellenarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Hacer
			
			Si j == 0 O j == 1 Entonces
				Escribir "Ingresa un numero: " Sin Saltar
				Leer matriz[i,j]
			SiNo
				matriz[i,j] = matriz[i, j-2] + matriz[i, j-1]
			FinSi
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Hacer
			
			Si j == 0 Entonces
				Escribir matriz[i,j], " + " Sin Saltar
			FinSi
			
			Si j == 1 Entonces
				Escribir matriz[i,j], " = " Sin Saltar
			FinSi
			
			Si j == 2 Entonces
				Escribir matriz[i,j] Sin Saltar
			FinSi
			
		FinPara
		
		Escribir ""
		
	FinPara
FinSubProceso
	