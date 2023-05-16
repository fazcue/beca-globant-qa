Algoritmo cuadrado_asteriscos
	Definir i, j, size Como Entero
	
	Escribir "Ingresa un tamaño:"
	Leer size
	
	//Bucle para lineas
	Para i = 1 Hasta size Con Paso 1 Hacer
		
		//Bucle para columnas
		Para j = 1 Hasta size Con Paso 1 Hacer
			
			//Si es primera o ultima linea, añadir todos los astericos
			//Agrego un espacio extra en blanco para mejor visualizacion en pseint
			Si i == 1 O i == size Entonces
				Escribir Sin Saltar "* "
			SiNo
				
				//Si es primera o ultima columna, añadir asteriscos solo en bordes
				//Agrego un espacio extra en blanco para mejor visualizacion en pseint
				Si j == 1 O j == size Entonces
					Escribir Sin Saltar "* "
				SiNo
					Escribir Sin Saltar "  "
				FinSi
				
			FinSi
			
		FinPara
		
		//Salto de linea al finalizar cada bucle de columnas
		Escribir ""
		
	FinPara
	
FinAlgoritmo
