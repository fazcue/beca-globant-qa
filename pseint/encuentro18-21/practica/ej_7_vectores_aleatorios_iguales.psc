Algoritmo ej_7_vectores_aleatorios_iguales
	Definir vectorA, vectorB Como Real
	Definir longVector Como Entero
	Definir sonIguales Como Logico
	
	//Ingresar longitud de los vectores
	Escribir "Indica la longitud de los vectores A y B:"
	Leer longVector
	
	//Asignar longitud
	Dimension vectorA[longVector], vectorB[longVector]
	
	//Rellenar vectores con valores aleatorios
	rellenarAleatoriamente(vectorA, longVector)
	rellenarAleatoriamente(vectorB, longVector)
	
	//Comparar vectores y retornar validacion
	sonIguales = compararVectores(vectorA, vectorB, longVector)
	
	//Mostrar info
	Escribir ""
	Escribir "-------------------------"
	mostrarVector(vectorA, longVector, "Vector A")
	mostrarVector(vectorB, longVector, "Vector B")
	Escribir "-------------------------"
	
	Si sonIguales Entonces
		Escribir "Los vectores son iguales."
	SiNo
		Escribir "Los vectores NO son iguales."
	FinSi
	
	Escribir ""
	
FinAlgoritmo

SubProceso rellenarAleatoriamente (vector, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		vector[i] = Aleatorio(-0, 0)
	FinPara

FinSubProceso

Funcion sonIguales <- compararVectores (vectorA, vectorB, longVector)
	Definir sonIguales Como Logico
	Definir i Como Entero
	
	sonIguales = Verdadero
	i = 0
	
	Hacer
		Si vectorA[i] <> vectorB[i] Entonces
			sonIguales = Falso
		FinSi
		i = i + 1
	Mientras Que sonIguales Y i < longVector
	
FinFuncion

SubProceso mostrarVector (vector, longVector, nombre)
	Definir i Como Entero
	
	Escribir nombre, ": [ " Sin Saltar
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		
		Escribir vector[i], "" Sin Saltar
		
		Si i <> longVector - 1 Entonces
			Escribir ", " Sin Saltar
		FinSi
		
	FinPara
	
	Escribir " ]"
	
FinSubProceso
