//Escriba un programa en el cual se ingrese un valor l�mite positivo, y a continuaci�n
//solicite n�meros al usuario hasta que la suma de los n�meros introducidos supere el
//l�mite inicial.

Algoritmo suma_con_limite_positivo
	Definir limite, total, num Como Entero
	
	//Variables
	total = 0
	
	//Solicitar limite positivo
	Escribir "Ingresa un limite positivo:"
	Leer limite
	
	//Bucle mientras limite es menor a 1 (si es no positivo, volver a solicitarlo)
	Mientras limite < 1 Hacer
		Escribir "Ingresa un limite positivo:"
		Leer limite
	Fin Mientras
	
	//Solicito ingrese un numero a sumar al total
	Escribir "Ingresa un numero a sumar:"
	Leer num
	
	total = num
	
	//Bucle mientras limite sea mayor igual a total, seguir solicitando numeros
	Mientras limite >= total Hacer
		Escribir "Ingresa otro numero a sumar:"
		Leer num
		
		total = total + num
	Fin Mientras
	
	Escribir "Superaste el limite de ", limite, ". La suma total fue: ", total
	
FinAlgoritmo
