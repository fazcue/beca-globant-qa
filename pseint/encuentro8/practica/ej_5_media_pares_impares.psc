Algoritmo media_pares_impares
	Definir num, evens, odds Como Real
	Definir evenCount, oddCount, MAX Como Entero
	
	//Constantes
	MAX = 10
	
	//Variables
	evens = 0
	odds = 0
	evenCount = 0
	oddCount = 0
	
	//Bucle hacer mientras la suma de evenCount + oddCount <> MAX
	Hacer
		
		//Solicito un numero
		Si (evenCount + oddCount) == 0 Entonces
			Escribir "#1: Ingresa un numero:"
		SiNo
			Escribir "#", evenCount + oddCount + 1, ": Ingresa otro numero:"
		FinSi
		Leer num
		
		//Si es par, lo sumo a evens y +1 a evenCount
		//Sino, lo sumo a odds y +1 a oddCount
		Si num MOD 2 == 0 Entonces
			evens = evens + num
			evenCount = evenCount + 1
		SiNo
			odds = odds + num
			oddCount = oddCount + 1
		FinSi
		
	Mientras Que (evenCount + oddCount) < MAX
	
	//Muestro informacion sobre la media de pares e impares
	Escribir "La media de los numeros PARES es: ", evens / evenCount
	Escribir "La media de los numeros IMPARES es: ", odds / oddCount
	
FinAlgoritmo
