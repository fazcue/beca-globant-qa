Algoritmo escalera_asteriscos
	Definir i, j, height Como Entero
	
	Escribir "Ingresa una altura:"
	Leer height
	
	//Bucle para cada linea
	Para i = height Hasta 1 Con Paso -1 Hacer
		
		//Bucle para cada columna, con j = i
		Para j = i Hasta 1 Con Paso -1 Hacer
			//Si es ultima posicion, no agrego espacio luego del asterisco, sino si
			Si j == 1 Entonces
				Escribir Sin Saltar "*"
			SiNo
				Escribir Sin Saltar "* "
			FinSi
		FinPara
		
		//Salto de linea
		Escribir ""
		
	FinPara
	
FinAlgoritmo
