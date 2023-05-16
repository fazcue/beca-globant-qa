Algoritmo ej_1_rellenar_vectores
	Definir vectorA, vectorB, longVector Como Entero
	
	longVector = 5
	
	Dimension vectorA[longVector], vectorB[longVector]
	
	rellenarVectores(vectorA, vectorB, longVector)
	
	mostrarVector(vectorA, longVector, "Vector A")
	mostrarVector(vectorB, longVector, "Vector B")
	
FinAlgoritmo

SubProceso rellenarVectores (vectorA, vectorB, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta  longVector - 1 Con Paso 1 Hacer
		
		vectorA[i] = Aleatorio(-100,100)
		vectorB[i] = Aleatorio(-100,100)
		
	FinPara
	
FinSubProceso

SubProceso mostrarVector (vector, longVector, nombre)
	Definir i Como Entero
	
	Escribir nombre, ": [" Sin Saltar
	
	Para i = 0 Hasta  longVector - 1 Con Paso 1 Hacer
		
		Si i == longVector - 1 Entonces
			Escribir vector[i] Sin Saltar
		SiNo
			Escribir vector[i], ", " Sin Saltar
		FinSi
		
	FinPara
	
	Escribir "]"

FinSubProceso
	