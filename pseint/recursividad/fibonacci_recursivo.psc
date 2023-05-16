Algoritmo fibonacci_recursivo
	Definir num, fibonacci Como Entero
	
	Escribir "Num:" Sin Saltar
	Leer num
	
	fibonacci = calcularFibonacci(num)
	
	Escribir "El fibonacci de ", num, " es: ", fibonacci
	
FinAlgoritmo

Funcion fibonacci <- calcularFibonacci(num)
	Definir fibonacci Como Entero
	
	//Condicion para terminar recursion
	//Sino, continuar
	Si num == 1 O num == 0 Entonces
		fibonacci = num
	SiNo
		fibonacci = calcularFibonacci(num-1) + calcularFibonacci(num-2)
	FinSi
	
FinFuncion
