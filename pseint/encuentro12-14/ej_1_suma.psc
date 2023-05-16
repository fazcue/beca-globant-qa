Algoritmo suma
	Definir num1, num2, res Como Real
	
	Escribir "Ingresa el 1er num a sumar:"
	Leer num1
	
	Escribir "Ingresa el 2do num a sumar:"
	Leer num2
	
	res = sumar(num1, num2)
	
	Escribir "La suma entre ", num1, " y ", num2, " es igual a: ", res
	
FinAlgoritmo


Funcion res <- sumar (num1, num2)
	Definir res Como Real
	
	res = num1 + num2
	
FinFuncion
