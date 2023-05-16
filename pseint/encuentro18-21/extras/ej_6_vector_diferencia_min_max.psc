Algoritmo ej_6_vector_diferencia_min_max
	Definir vector, longVector, diferencia Como Entero
	
	//Crear vector
	longVector = 6
	Dimension vector[longVector]
	
	//Generar valores aleatoriamente
	generarValoresAleatoriamente(vector, longVector)
	
	//Mostrar vector
	mostrarVector(vector, longVector)
	
	//Obtener diferencia entre valor min y max del vector
	diferencia = difMinMax(vector, longVector)
	
	Escribir "La diferencia entre el maximo valor y el minimo es igual a: ", diferencia
	
FinAlgoritmo

SubProceso generarValoresAleatoriamente (vector, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hace
		vector[i] = Aleatorio(0, 20)
	FinPara
	
FinSubProceso

Funcion diferencia <- difMinMax (vector, longVector)
	Definir i, diferencia, min, max Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		
		Si i == 0 Entonces
			min = vector[i]
			max = vector[i]
		FinSi
		
		Si vector[i] < min Entonces
			min = vector[i]
		FinSi
		
		Si vector[i] > max Entonces
			max = vector[i]
		FinSi
		
	FinPara
	
	Escribir "Valor maximo: ", max
	Escribir "Valor minimo: ", min
	Escribir ""
	
	diferencia = max - min
	
FinFuncion

SubProceso mostrarVector (vector, longVector)
	Definir i Como Entero
	
	Escribir "Vector: [ " Sin Saltar
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		Escribir vector[i], " " Sin Saltar
	FinPara
	
	Escribir "]"
	Escribir ""
	
FinSubProceso