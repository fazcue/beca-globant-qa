Algoritmo suma_n_primeros_numeros_pares
	Definir num, sum, count, aux Como Entero
	
	//Variables
	count = 0
	sum = 0
	aux = 2
	
	//Solicito un numero entero positivo
	Hacer
		Escribir "Ingresa un numero entero positivo:"
		Leer num
	Mientras Que (num <= 0)

	//Bucle hacer mientras count <> num
	Hacer
		//Sumo el numero par actual
		sum = sum + aux
		
		//Incremento el numero par en +2
		aux = aux + 2
		
		//Incremento el contador en +1
		count = count + 1
	Mientras Que count < num
	
	//Finalmente, muestro la info
	Escribir "La suma de los primeros ", num, " numeros pares es: ", sum
	
FinAlgoritmo
