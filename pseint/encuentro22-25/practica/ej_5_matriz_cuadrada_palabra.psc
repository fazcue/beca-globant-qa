Algoritmo ej_5_matriz_cuadrada_caracteres
	Definir matriz, palabra Como Caracter
	Definir longMatriz Como Entero
	
	//Crear matriz cuadrada 3x3
	longMatriz = 3
	Dimension matriz[longMatriz, longMatriz]
	
	//Rellenar matriz cuadrada con palabra ingresada por usuario 
	rellenarMatrizCuadradaConCaracteres(matriz, longMatriz)
	
	//Mostrar matriz cuadrada
	mostrarMatrizCuadrada(matriz, longMatriz)
	
FinAlgoritmo

SubProceso rellenarMatrizCuadradaConCaracteres (matriz, longMatriz)
	Definir i, j, longPalabra, pos Como Entero
	Definir palabra Como Caracter
	
	//Variables
	longPalabra = 0
	pos = 0
	
	//Solicitar palabra al usuario
	Hacer
		Escribir "Ingresa una palabra de ", longMatriz * longMatriz, " caracteres:"
		Leer palabra
		
		longPalabra = Longitud(palabra)
		
		Si longPalabra <> (longMatriz * longMatriz) Entonces
			Escribir "Cantidad de caracteres no válidos: ", longPalabra, " / ", longMatriz * longMatriz
			Escribir ""
		FinSi
	Mientras Que longPalabra <> (longMatriz * longMatriz)
	
	//Rellenar matriz con cada caracter en palabra
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			matriz[i,j] = Subcadena(palabra, pos, pos)
			pos = pos + 1
		FinPara
		
	FinPara
	
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
