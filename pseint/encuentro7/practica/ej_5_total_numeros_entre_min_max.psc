Algoritmo total_numeros_entre_min_max
	Definir min, max, num, total Como Entero
	
	//Variables
	total = 0
	
	//Solicito el minimo
	Escribir "Ingresa el minimo:"
	Leer min
	
	//Declaro max igual a min - 1 (para cumplir primera iteracion)
	max = min - 1
	
	//Solicito el maximo (debe ser mayor a minimo)
	Mientras (max <= min) Hacer
		Escribir "Ingresa el maximo (distinto de minimo):"
		Leer max
	FinMientras
	
	//Defino variable num igual a min (para cumplir 1era iteracion)
	num = min
	
	//Solicitar un numero inicial
	Escribir "Ingresa un numero:"
	Leer num
	
	//Mientras num sea mayor igual a minimo, Y num sea menor igual a maximo
	Mientras (num >= min Y num <= max) Hacer
		//sumo +1 a total
		total = total + 1
		
		//Solicitar otro numero
		Escribir "Ingresa otro numero:"
		Leer num
	Fin Mientras
	
	Escribir "El total de numeros ingresados entre ", min, " (min) y ", max, " (max) fue: ", total
	
FinAlgoritmo
