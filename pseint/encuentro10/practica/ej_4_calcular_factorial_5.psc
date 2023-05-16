Algoritmo calcular_factorial_5
	Definir i, j, k, factorial, LIMIT Como Entero
	
	//Constantes
	LIMIT = 5
	
	//Bucle para calcular factorial desde 1 hasta LIMIT, incrementando en +1
	Para i = 1 Hasta LIMIT Con Paso 1 Hacer
		
		//Variables
		factorial = 1
		
		//Bucle para calcular cada factorial
		Para j = 1 Hasta i Con Paso 1 Hacer
			factorial = factorial * j
		FinPara
		
		Escribir Sin Saltar "!", i, " = "
		
		//Encadenar multiplicacion
		//1*2*3*4... *n
		Para k = 1 Hasta i Con Paso 1 Hacer
			Si k == i Entonces
				Escribir Sin Saltar k
			SiNo
				Escribir Sin Saltar k, "*"
			FinSi
		FinPara
		
		//Si i = 1, no mostrar factorial (ya se muestra en "encadenar mult")
		Si i <> 1 Entonces
			Escribir Sin Saltar " = ", factorial
		FinSi

		Escribir ""
		
	FinPara
	
FinAlgoritmo
