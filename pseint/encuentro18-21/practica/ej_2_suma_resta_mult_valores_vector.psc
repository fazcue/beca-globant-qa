Algoritmo ej_2_suma_resta_mult_valores_vector
	Definir vector, LONG_VECTOR Como Real
	
	LONG_VECTOR = 10
	Dimension vector[LONG_VECTOR]
	
	ingresarValores(vector, LONG_VECTOR)
	
	sumaRestaMultiplicacion(vector, LONG_VECTOR)
	
FinAlgoritmo

SubProceso ingresarValores (vector, LONG_VECTOR)
	Definir i Como Entero
	
	Para i=0 Hasta LONG_VECTOR - 1 Con Paso 1 Hacer
		
		Escribir "#", i+1, " Ingresar un numero:" Sin Saltar
		Leer vector[i]
		
	FinPara
FinSubProceso

SubProceso sumaRestaMultiplicacion (vector, LONG_VECTOR)
	Definir i, suma, multiplicacion Como Real
	
	suma = 0
	multiplicacion = 1
	
	Para i=0 Hasta LONG_VECTOR - 1 Con Paso 1 Hacer
		suma = suma + vector[i]
		multiplicacion = multiplicacion * vector[i]
	FinPara
	
	Escribir ""
	Escribir "La suma de todos los numeros del vector es igual a: ", suma
	Escribir "La resta de todos los numeros en el vector es igual a: ", -suma
	Escribir "La multiplicacion de todos los numeros en el vector es igual a: ", multiplicacion
FinSubProceso
