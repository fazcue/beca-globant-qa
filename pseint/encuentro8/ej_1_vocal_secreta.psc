Algoritmo vocal_secreta
	Definir vowels, selectedVowel, res Como Caracter
	Definir random Como Entero
	
	//Variables
	vowels = "aeiou"
	
	//Obtengo una vocal al azar
	random = azar(Longitud(vowels))
	selectedVowel = Subcadena(vowels, random, random)
	
	//Bucle hacer "solicitar una vocal" mientras selectedVowel <> res
	Hacer
		//Solicito una res
		Escribir "Ingresa una vocal:"
		Leer res
		
		//Si es incorrecto, muestro mensaje de error
		Si res <> selectedVowel Entonces
			Escribir "Ups! Incorrecto!"
		FinSi
	Mientras Que selectedVowel <> res
	
	Escribir "Ganaste! La vocal secreta era: ", selectedVowel
	
FinAlgoritmo
