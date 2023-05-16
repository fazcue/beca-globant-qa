Algoritmo ej_5_vector_mayor_valor
	Definir vector, longVector, max Como Entero
	
	//Ingresar longitud del vector
	Escribir "Indica la longitud del vector:" Sin Saltar
	Leer longVector
	
	Dimension vector[longVector]
	
	//Rellenar vector
	rellenarVector(vector, longVector)
	
	//Obtener mayor valor
	max = obtenerMayorValor(vector, longVector)
	
	//Mostrar info
	Escribir "El mayor valor en el vector es: ", max
	
FinAlgoritmo

SubProceso rellenarVector (vector, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		Escribir "#", i+1, ": Ingresa un entero:" Sin Saltar
		Leer vector[i]
	FinPara
	
FinSubProceso

Funcion max <- obtenerMayorValor(vector, longVector)
	Definir max, i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		
		Si i == 0 Entonces
			max = vector[i]
		FinSi
		
		Si vector[i] > max Entonces
			max = vector[i]
		FinSi
	FinPara
	
FinFuncion
