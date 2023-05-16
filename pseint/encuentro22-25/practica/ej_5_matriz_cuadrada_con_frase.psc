//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la frase se muestre de manera continua en la matriz.
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:

Algoritmo ej_5_matriz_cuadrada_con_frase
	Definir matriz, frase Como Caracter
	Definir longMatriz, longFrase Como Entero
	
	longFrase = 0
	
	longMatriz = 3
	Dimension matriz[longMatriz, longMatriz]
	
	ingresarFrase(matriz, longMatriz, frase, longFrase)
	
	mostrarMatrizCuadrada(matriz, longMatriz)
	
FinAlgoritmo

SubProceso ingresarFrase(matriz, longMatriz, frase Por Referencia, longFrase)
	Definir i, j, posicion Como Entero
	
	posicion = 0
	
	//Ingresar frase
	Hacer
		Escribir "Ingresa la frase:"
		Leer frase
		
		longFrase = Longitud(frase)
		
		Si longFrase <> longMatriz * longMatriz Entonces
			Escribir "La longitud de la frase no es valida"
			Escribir ""
		FinSi
		
	Mientras Que longFrase <> longMatriz * longMatriz
	
	//Guardar frase en matriz
	Para i = 0 Hasta longMatriz - 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Hacer
			
			matriz[i,j] = Subcadena(frase, posicion, posicion)
			posicion = posicion + 1
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso mostrarMatrizCuadrada(matriz, longMatriz)
	Definir i, j Como Entero
	
	Escribir "[ "
	Para i = 0 Hasta longMatriz - 1 Hacer
		
		Escribir "  [ " Sin Saltar
		Para j = 0 Hasta longMatriz - 1 Hacer
			
			Escribir matriz[i,j], " " Sin Saltar
			
		FinPara
		Escribir "]" Sin Saltar
		Escribir ""
		
	FinPara
	Escribir "]"
FinSubProceso
	