Algoritmo ej_5_matriz_nxm_suma
	Definir matriz, filas, columnas Como Entero
	
	//Crear matriz
	Hacer
		Escribir "Indica la cantidad de filas:" Sin Saltar
		Leer filas
		
		Si filas < 1 Entonces
			Escribir "Filas debe ser igual o mayor a 1."
			Escribir ""
		FinSi
		
	Mientras Que filas < 1
	
	columnas = 3
	Dimension matriz[filas, columnas]
	
	//Rellenar 1era y 2da columna con valores ingresados por el usuario
	rellenar1era2daColumnaMatriz(matriz, filas, columnas)
	
	//Mostrar matriz
	mostrarMatriz(matriz, filas, columnas)
	
FinAlgoritmo

SubProceso rellenar1era2daColumnaMatriz (matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			Si j == 2 Entonces
				matriz[i,j] = matriz[i,0] + matriz[i,1]
			SiNo
				Escribir "[", i, ", ", j, "]: Ingresa un numero entero:" Sin Saltar
				Leer matriz[i,j]
			FinSi
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso mostrarMatriz (matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Con Paso 1 Hacer
			
			Escribir matriz[i,j] Sin Saltar
			
			Si j == 0 Entonces
				Escribir " + " Sin Saltar
			FinSi
			
			Si j == 1 Entonces
				Escribir " = " Sin Saltar
			FinSi
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso
