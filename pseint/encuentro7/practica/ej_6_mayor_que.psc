Algoritmo mayor_que
	Definir num, prev Como Real
	
	//Variables
	prev = 0
	num = 1
	
	//Bucle mientras num sea mayor a prev
	Mientras num > prev Hacer
		Escribir "Ingresa un numero:"
		Leer num
		
		//Si se cumple num > prev, entonces:
		//asignar a prev valor actual de num
		//sumar +1 a num (para que se cumpla nuevamente la condicion del bucle)
		Si num > prev Entonces
			prev = num
			num = num + 1
		FinSi
	Fin Mientras
	
	Escribir "El numero ", num, " no es superior a ", prev
FinAlgoritmo
