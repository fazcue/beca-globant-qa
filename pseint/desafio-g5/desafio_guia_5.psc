Algoritmo desafio_guia_5
	Definir matriz Como Caracter
	Definir filas, columnas Como Entero
	
	//Crear matriz n*m
	Escribir "Indica la cantidad de filas de la matriz: " Sin Saltar
	Leer filas
	
	Escribir "Indica la cantidad de columnas de la matriz: " Sin Saltar
	Leer columnas
	
	Dimension matriz[filas, columnas]
	
	//Inicializar matriz
	inicializarMatriz(matriz, filas, columnas)
	
	//Solicitar palabra y agregar a la matriz
	solicitarPalabras(matriz, filas, columnas)
	
	//Mostrar matriz inicial
	imprimirMatriz(matriz, filas, columnas)
	
	//Acomodar matriz
	acomodarPalabra(matriz, filas, columnas)
	
	//Mostrar matriz final
	imprimirMatriz(matriz, filas, columnas)
	
FinAlgoritmo

SubProceso inicializarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	
	Para i = 0 Hasta filas - 1 Hacer
		
		Para j = 0 Hasta columnas - 1 Hacer
			matriz[i,j] = "*"
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	
	Escribir ""
	
	//Cabecera con num columnas
	Escribir "    " Sin Saltar
	
	Para i = 0 Hasta columnas - 1 Hacer
		Si i > 9 Entonces
			Escribir i - 10, " " Sin Saltar
		SiNo
			Escribir i, " " Sin Saltar
		FinSi
	FinPara
	
	Escribir ""
	Escribir "    " Sin Saltar
	
	Para i = 0 Hasta columnas - 1 Hacer
		Escribir "- " Sin Saltar
	FinPara
	
	Escribir ""
	
	//Matriz con num filas
	Para i = 0 Hasta filas - 1 Hacer
		Escribir i, " [ " Sin Saltar
		
		Para j = 0 Hasta columnas - 1 Hacer
			Escribir matriz[i,j], " " Sin Saltar
		FinPara
		
		Escribir "]"
	FinPara
	
	Escribir ""
FinSubProceso

SubProceso agregarPalabra(matriz, fila, palabra)
	Definir i, longPalabra Como Entero
	
	longPalabra = Longitud(palabra)
	
	Para i = 0 Hasta longPalabra - 1 Hacer
		matriz[fila, i] = Subcadena(palabra, i, i)
	FinPara
	
FinSubProceso

SubProceso solicitarPalabras(matriz, filas, columnas)
	Definir i, longPalabra Como Entero
	Definir palabra Como Caracter
	
	// Para cada fila...
	Para i = 0 Hasta filas - 1 Hacer
		
		// Solicitar una palabra que no supera la cantidad de columnas...
		Hacer
			Escribir "Ingresar una palabra para la fila #", i, ": " Sin Saltar
			Leer palabra
			
			Si Longitud(palabra) > columnas Entonces
				Escribir "Superaste la longitud permitida por ", Longitud(palabra) - columnas, " caracteres."
				Escribir ""
			FinSi
			
		Mientras Que Longitud(palabra) > columnas
		
		// Finalmente, agregarla a la matriz en la fila correspondiente
		agregarPalabra(matriz, i, palabra)
		
	FinPara
	
FinSubProceso

Funcion posicionR <- buscarR(matriz, fila)
	Definir i, posicionR Como Entero
	
	posicionR = -1
	i = 0
	
	Hacer
		Si Minusculas(matriz[fila, i]) == "r" Entonces
			posicionR = i
		FinSi
		i = i + 1
	Mientras Que posicionR == -1
FinFuncion

SubProceso acomodarPalabra(matriz, filas, columnas)
	Definir i, j, k, posicionR, distancia Como Entero
	
	//Recorrer matriz por filas...
	Para i = 0 Hasta filas - 1 Hacer
		
		//Obtener posicion de letra R...
		posicionR = buscarR(matriz, i)
		
		//Si letra R NO está en posicion 5...
		Si posicionR <> 5 Entonces
			
			//Calculo la distancia de posicionR a 5...
			distancia = 5 - posicionR
			
			//Desplazar a la derecha tantas veces sea distancia
			Para j = 0 Hasta distancia - 1 Hacer
				Para k = columnas - 1 Hasta 1 Con Paso -1 Hacer
					matriz[i,k] = matriz[i, k - 1]
				FinPara
			FinPara
			
			//Reemplazar con asteriscos en espacios a la izquierda
			Para j = 0 Hasta distancia - 1 Hacer
				matriz[i,j] = "*"
			FinPara
			
		FinSi
		
	FinPara
FinSubProceso
