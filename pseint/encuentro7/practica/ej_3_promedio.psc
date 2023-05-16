Algoritmo promedio
	Definir num, total, cantidad Como Entero
	
	//Variables
	total = 0
	cantidad = 0
	num = 0
	
	//Solicitar un numero, mientras no sea igual a -1
	//Sumo el total
	//Añado +1 a cantidad
	Mientras num <> -1 Hacer
		Si cantidad == 0 Entonces
			Escribir "Ingresa un numero:"
		SiNo
			Escribir "Ingresa otro numero:"
		FinSi
		Leer num
		
		Si num <> -1 Entonces
			total = total + num
			cantidad = cantidad + 1
		FinSi
	Fin Mientras
	
	//Muestro el promedio
	Escribir "El promedio de los numeros ingresados es: ", total / cantidad
FinAlgoritmo
