Algoritmo caracteres_espaciados_inverso
	Definir i, limite Como Entero
	Definir words, currentChar Como Caracter
	
	//Solicito una frase
	Escribir "Ingresa una frase:"
	Leer words
	
	//Obtengo longitud de la frase y le resto 1 (ya que arrancaremos a contar desde 0)
	limite = Longitud(words) - 1
	
	//Opcion #1
	//Mas simple: un solo cambio
	Para i = 0 Hasta limite Con Paso 1 Hacer
		
		//Obtengo el caracter en la posicion i
		currentChar = Subcadena(words, limite - i, limite - i) //AQUI EL CAMBIO! cambiar "i" a "limite - i" para correr desde fin a comienzo
//		currentChar = Subcadena(words, i, i) //Original
		
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
	
	//Opcion #2
	//Un poco mas de cambios
	//	Para i = limite Hasta 0 Con Paso -1 Hacer //AQUI UN CAMBIO! inicializar "i" con valor "limite"; indicar Hasta valor 0, y decrementar en -1
	//		
	//		//Obtengo el caracter en la posicion i
	//		currentChar = Subcadena(words, i, i)
	//		
	//		//Lo imprimo en pantalla
	//		Escribir Sin Saltar currentChar
	//		
	//		//Si no es la última iteracion, añadir espacio vacio
	//		//Sino, añadir salto de linea
	//		Si i > 0 Entonces //AQUI OTRO CAMBIO! ahora la posicion final pasa a ser "0"
	//			Escribir Sin Saltar " "
	//		SiNo
	//			Escribir ""
	//		FinSi
	//		
	//	Fin Para
	
FinAlgoritmo
