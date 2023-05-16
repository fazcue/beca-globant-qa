Algoritmo numero_en_asteriscos
	Definir i, j, num, LIMIT Como Entero
	
	//Constantes
	LIMIT = 5
	
	Para i = 1 Hasta LIMIT Con Paso 1 Hacer
		
		//Solicito en num entre 1 y 20
		Hacer
			Escribir "#", i, " Ingresa un numero entero entre 1 y 20:"
			Leer num
		Mientras Que num < 1 O num > 20
		
		Escribir Sin Saltar num, " "
		
		//Bucle Para j = 1 hasta "num", incrementando en +1
		Para j = 1 Hasta num Con Paso 1 Hacer
			
			//Escribo cantidad de asteriscos
			Escribir Sin Saltar "*"
			
		FinPara
		
		//Salto de linea
		Escribir ""
		
	FinPara
	
FinAlgoritmo
