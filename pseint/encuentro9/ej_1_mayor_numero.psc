Algoritmo mayor_numero
	Definir i, limit, num, max Como Entero
	
	//Bucle hacer mientras limite sea menor a 1
	Hacer
		//Solicito cantidad de numeros (limite)
		Escribir "Ingresa cantidad de numeros a ingresar:"
		Leer limit
	Mientras Que limit < 1
	
	//Bucle para cada iteracion desde 1 hasta limit, incrementar en 1 y hacer:
	Para i = 1 Hasta limit Con Paso 1 Hacer
		
		//Solicitar un numero
		Escribir "#", i, " de ", limit, ": Ingresa un numero:"
		Leer num
		
		//Si es 1era iteracion, asignar valor num a max
		Si i == 1 Entonces
			max = num
		FinSi
		
		//Si num es mayor a max, sobreescribir max
		Si num > max Entonces
			max = num
		FinSi
		
	Fin Para
	
	//Finalmente, muestro el mayor numero ingresado
	Escribir "El mayor numero ingresado es: ", max
	
FinAlgoritmo
