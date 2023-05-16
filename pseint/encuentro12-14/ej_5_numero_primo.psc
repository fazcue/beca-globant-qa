Algoritmo numero_primo
	Definir num Como Real
	
	//Pedir que ingrese un numero natural
	Hacer
		Escribir "Ingresa un numero:"
		Leer num
	Mientras Que num < 0
	
	//Si es mayor a 1, calcular si es primo
	Si num > 1 Entonces
		Escribir "El numero ", num, " es primo? ", esPrimo(num)
	SiNo
		//Si es igual a 0 o 1, entonces no es ni primo ni compuesto
		Si num == 0 O num == 1 Entonces
			Escribir "El numero ", num, " no es ni primo ni compuesto."
		FinSi
	FinSi
FinAlgoritmo

Funcion res <- esPrimo (num)
	Definir res Como Logico
	Definir counter Como Entero
	
	//Variables
	res = Verdadero
	counter = 2
	
	//Bucle mientras res sea Verdadero y counter menor a num, seguir probando numeros
	Mientras res Y (counter < num) Hacer
		
		//Si el numero MOD counter no tiene resto, entonces no es Primo
		Si num MOD counter == 0 Entonces
			res = Falso
		FinSi
		
		counter = counter + 1
		
	FinMientras
FinFuncion
