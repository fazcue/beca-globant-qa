Algoritmo ej_2_matriz_nxm_traspuesta
	Definir matriz, filas, columnas Como Entero
	
	//Solicitar cantidad de filas y columnas
	Hacer
		Escribir "Indica la cantidad de filas:" Sin Saltar
		Leer filas
		
		Si filas < 1 Entonces
			Escribir "La matriz debe tener al menos 1 fila."
			Escribir ""
		FinSi
	Mientras Que filas < 1

	Hacer
		Escribir "Indica la cantidad de columnas:" Sin Saltar
		Leer columnas
		
		Si columnas < 1 Entonces
			Escribir "La matriz debe tener al menos 1 columna."
			Escribir ""
		FinSi
	Mientras Que columnas < 1
	
	//Crear matriz
	Dimension matriz[filas, columnas]
	
	//Rellenar matriz aleatoriamente
	rellenarMatrizAleatoriamente(matriz, filas, columnas)
	
	//Mostrar matriz original
	mostrarMatriz(matriz, filas, columnas)
	
	//Convertir filas en columnas y viceversa (matriz traspuesta)
	matrizTraspuesta(matriz, filas, columnas)
	
FinAlgoritmo

SubProceso rellenarMatrizAleatoriamente (matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			matriz[i,j] = Aleatorio(1,100)
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso matrizTraspuesta (matriz, filas, columnas)
	Definir traspuesta Como Entero
	Definir i, j Como Entero
	
	//Crear matriz traspuesta
	Dimension traspuesta[columnas, filas]
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			traspuesta[j,i] = matriz[i,j]
			
		FinPara
		
	FinPara
	
	//Mostrar matriz traspuesta
	mostrarMatriz(traspuesta, columnas, filas)
	
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
	