//Escribir un programa que calcule cuántos dígitos tiene un número entero positivo sin
//convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
//investigar la función trunc().

Algoritmo cantidad_digitos
	Definir num, aux, totalDigits Como Entero
	
	//Variables
	totalDigits = 0
	
	//Solicitar num
	Escribir "Ingresa un numero entero positivo:"
	Leer num
	
	//Copiar num en auxiliar (para evitar sobreescribir num)
	aux = num
	
	//Bucle mientras num sea menor igual a 0
	Mientras num <= 0 Hacer
		Escribir "Ingresa un numero entero positivo:"
		Leer num
		
		//Si es mayor a 0, hacer copia en variable aux
		Si num >= 1 Entonces
			aux = num
		FinSi
	FinMientras
	
	//Bucle mientras aux sea mayor a 0
	Mientras aux > 0 Hacer
		//Quitar unidad
		aux = trunc(aux / 10)
		
		//Sumar +1 a totalDigits
		totalDigits = totalDigits + 1
	FinMientras
	
	Escribir "El numero ", num, " tiene ", totalDigits, " digitos"
FinAlgoritmo