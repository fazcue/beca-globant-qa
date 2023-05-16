Algoritmo vocal_secreta
	Definir vowels, selectedVowel, res Como Caracter
	Definir random, tries Como Entero
	
	//Variables
	vowels = "aeiou"
	tries = 1
	res = ""
	
	//Obtengo un numero al azar entre 0 y longitud de vowels - 1
	random = azar(Longitud(vowels)) //Devuelve un numero al azar entre 0 y n-1
	selectedVowel = SubCadena(vowels,random,random) //Devuelve una subcadena desde y hasta la posicion indicada (son inclusives ambas)

	//Bucle mientras res <> vocal
	Mientras res <> selectedVowel Hacer
		//Si NO es su primer intento, mostrar mensaje de incorrecto
		Si tries > 1 Entonces
			Escribir "Ups! Incorrecto!"
		FinSi
		
		//Solicito que ingrese una vocal
		Escribir "Itento #", tries, ": Adivina la vocal:"
		Leer res
		
		//Si la respuesta es incorrecta, sumo +1 a cantidad de intentos
		Si res <> selectedVowel Entonces
			tries = tries + 1	
		FinSi
	FinMientras
	
	//Finalmente, muestro mensaje cuando adivine la vocal
	Escribir "Ganaste! la adivinaste en ", tries, " intento/s"
FinAlgoritmo
