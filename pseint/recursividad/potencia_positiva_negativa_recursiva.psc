//Calcula la potencia de un numero de forma recursiva, tanto para exponentes
//negativos como positivos.

Algoritmo potencia_recursiva
	Definir num, exponente Como Entero
	Definir potencia Como Real
	
	Escribir "Num:"
	Leer num
	
	Escribir "Exp:"
	Leer exponente
	
	potencia = calcularPotencia(num, exponente)
	
	Escribir "La potencia de ", num, "^", exponente, " es: ", potencia
FinAlgoritmo

Funcion potencia <- calcularPotencia (num, exponente)
	Definir potencia, aux Como Real
	
	Si exponente == 0 Entonces
		potencia = 1
	SiNo
		
		//guardo exp en aux
		aux = exponente
		
		//Si aux es menor a 0, convertir a positivo
		Si aux < 0 Entonces
			aux = -aux
		FinSi
		
		//Condicion caso final 
		Si aux == 1 Entonces
			potencia = num
		SiNo
			potencia = num * calcularPotencia(num, aux - 1)
		FinSi
		
		//Si el exponente es negativo, entonces convertir a division
		Si exponente < 0 Entonces
			potencia = 1 / potencia
		FinSi
		
	FinSi
	
FinFuncion
	