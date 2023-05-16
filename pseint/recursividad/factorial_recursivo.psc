Algoritmo factorial_recursivo
	Definir num, factorial Como Entero
	
	Escribir "Num:"
	Leer num
	
	factorial = calcularFactorial(num)
	
	Escribir "El factorial de ", num, " es: ", factorial
FinAlgoritmo


Funcion factorial <- calcularFactorial(num)
	Definir factorial Como Entero
	
	//Condicional donde parar recursion
	//Sino, continuar
	Si num == 1 Entonces
		factorial = 1
	SiNo
		factorial = num * calcularFactorial(num - 1)
	FinSi
	
FinFuncion
