Algoritmo ej_2_vector_promedio_suma
	Definir vector, longVector Como Entero
	Definir promedio Como Real
	
	//Ingresar longitud del vector
	Escribir "Indica la longitud del vector:" Sin Saltar
	Leer longVector
	
	Dimension vector[longVector]
	
	//Rellenar vector
	rellenarVector(vector, longVector)
	
	//Obtener promedio de la suma de valores
	promedio = calcularPromedioSuma(vector, longVector)
	
	//Mostrar info
	Escribir "El promedio de la suma de todos los valores del vector es: ", promedio
	
FinAlgoritmo

SubProceso rellenarVector (vector, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		Escribir "#", i+1, ": Ingresa un entero:" Sin Saltar
		Leer vector[i]
	FinPara
	
FinSubProceso

Funcion promedio <- calcularPromedioSuma (vector, longVector)
	Definir promedio, suma Como Real
	Definir i Como Entero
	
	suma = 0
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		suma = suma + vector[i]
	FinPara
	
	promedio = suma / longVector
	
FinSubProceso
	