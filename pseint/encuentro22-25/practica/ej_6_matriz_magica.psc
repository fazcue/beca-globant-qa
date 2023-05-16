Algoritmo ej_6_matriz_magica
	Definir matriz, longMatriz Como Entero
	
	//Crear matriz cuadrada
	Hacer
		Escribir "Indica la longitud de la matriz²:" Sin Saltar
		Leer longMatriz
		Si longMatriz < 1 O longMatriz >= 10 Entonces
			Escribir "Longitud no válida."
			Escribir ""
		FinSi
	Mientras Que longMatriz < 1 O longMatriz >= 10

	Dimension matriz[longMatriz, longMatriz]
	
	//Rellenar matriz cuadrada con numeros ingresados por usuario 
	rellenarMatrizCuadradaManualmente(matriz, longMatriz)
	
	//Mostrar matriz cuadrada
	mostrarMatrizCuadrada(matriz, longMatriz)
	
	//Comprobar si la matriz es magica
	comprobarMatrizMagica(matriz, longMatriz)
	
FinAlgoritmo

SubProceso rellenarMatrizCuadradaManualmente (matriz, longMatriz)
	Definir i, j, num Como Entero
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			Hacer
				Escribir "[", i, ", ", j, "]: Ingresa un numero del 1 al 9: " Sin Saltar
				Leer num
				
				Si num < 1 O num > 9 Entonces
					Escribir "Nmero ingresado no valido..."
					Escribir ""
				FinSi
				
			Mientras Que num < 1 O num > 9
			
			matriz[i,j] = num
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso comprobarMatrizMagica (matriz, longMatriz)
	Definir i, j, suma, sumaFila, sumaColumna, sumaDiagonal1, sumaDiagonal2 Como Entero
	Definir esMagica Como Logico
	
	//Variables
	esMagica = Verdadero
	suma = 0
	sumaDiagonal1 = 0
	sumaDiagonal2 = 0
	
	//Comprobar si es magica
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Si esMagica Entonces
			
			sumaFila = 0
			sumaColumna = 0
			
			Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
				
				//Suma 1er fila
				Si i == 0 Entonces
					suma = suma + matriz[i, j]
				FinSi
				
				//Suma resto filas
				sumaFila = sumaFila + matriz[i, j]
				
				//Suma columnas
				sumaColumna = sumaColumna + matriz[j, i]
				
				//Suma diagonal1
				Si i == j Entonces
					sumaDiagonal1 = sumaDiagonal1 + matriz[i, j]
				FinSi
				
				//Suma diagonal2
				Si j == (longMatriz - 1 - i)  Entonces
					sumaDiagonal2 = sumaDiagonal2 + matriz[i, j]
				FinSi
				
			FinPara
			
			//Comprobar filas y columnas
			Si (sumaFila <> suma) O (sumaColumna <> suma) Entonces
				esMagica = Falso
			FinSi
			
		FinSi
		
	FinPara
	
	//Comprobar diagonales
	Si (sumaDiagonal1 <> suma) O (sumaDiagonal2 <> suma) Entonces
		esMagica = Falso
	FinSi
	
	//Mostrar mensaje segun si es magica o no
	Si esMagica Entonces
		Escribir "La matriz es magica. Su suma es igual a: ", suma
	SiNo
		Escribir "La matriz NO es magica."
	FinSi
	
FinSubProceso

SubProceso mostrarMatrizCuadrada (matriz, longMatriz)
	Definir i, j Como Entero
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Escribir "[ " Sin Saltar
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			Escribir matriz[i,j], " " Sin Saltar
			
		FinPara
		
		Escribir "]" Sin Saltar
		Escribir ""
		
	FinPara
	
	Escribir ""
	
FinSubProceso
