Algoritmo caracteres_espaciados
	Definir i, limite Como Entero
	Definir words, currentChar Como Caracter
	
	//Solicito una frase
	Escribir "Ingresa una frase:"
	Leer words
	
	//Obtengo longitud de la frase y le resto 1 (ya que arrancaremos a contar desde 0)
	limite = Longitud(words) - 1
	
	Para i = 0 Hasta limite Con Paso 1 Hacer
		
		//Obtengo el caracter en la posicion i
		currentChar = Subcadena(words, i, i)
		
		//Lo imprimo en pantalla
		Escribir Sin Saltar currentChar
		
		//Si no es la última iteracion, añadir espacio vacio
		//Sino, añadir salto de linea
		Si i < limite Entonces
			Escribir Sin Saltar " "
		SiNo
			Escribir ""
		FinSi
		
	Fin Para
FinAlgoritmo
