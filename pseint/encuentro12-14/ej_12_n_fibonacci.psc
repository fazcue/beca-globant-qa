Algoritmo n_fibonacci
	Definir num Como Entero
	Definir numFibonacci Como Entero
	
	//Variables
	numFibonacci = 1
	
	//Solicitar numero
	Escribir "Ingresa un numero:"
	Leer num
	
	//Si num es mayor a 1, entonces llamar a funcion fibonacci
	Si num > 1 Entonces
		numFibonacci = fibonacci(num)
	FinSi
	
	//Mostrar info
	Escribir "El termino ", num, " en la sucesion de Fibonacci es: ", numFibonacci
	
FinAlgoritmo

Funcion numFib <- fibonacci (num)
	Definir i, numFib, n2, n1 Como Entero
	
	//Variables
	n2 = 0
	n1 = 1
	numFib = 0
	
	//numFib = n-2 + n-1
	//Guardar valores previos en n2 y n1 sucesivamente
	Para i = 1 Hasta num - 1 Con Paso 1 Hacer
		//Numero fibonacci actual 
		numFib = n2 + n1
		
		//n2 es actualizado con valor de n1
		n2 = n1
		//n1 es actualizado con valor de numFib
		n1 = numFib
	FinPara
	
FinFuncion
