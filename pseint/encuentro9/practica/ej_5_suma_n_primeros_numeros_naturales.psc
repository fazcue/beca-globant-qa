Algoritmo suma_n_primeros_numeros_naturales
	Definir i, limite, sum Como Entero
	
	//Variables
	sum = 0
	
	//Bucle hacer mientras que limite sea menor 1 (solo se aceptan numeros naturales)
	Hacer
		Escribir "Ingresa un limite:"
		Leer limite
	Mientras Que limite < 1
	
	//Bucle para cada iteracion desde 1 hasta limite, incrementar en 1 y hacer:
	Para i = 1 Hasta limite Con Paso 1 Hacer
		//Sumar i a sum
		sum = sum + i
	FinPara
	
	//Imprimr en pantalla el resultado
	Escribir "La suma de los primeros ", limite, " numeros naturales es: ", sum
	
FinAlgoritmo
