Algoritmo ej_3_vector_buscar_valor
	Definir vector, longVector, max Como Entero
	
	//Ingresar longitud del vector
	Escribir "Indica la longitud del vector:" Sin Saltar
	Leer longVector
	
	Dimension vector[longVector]
	
	//Rellenar vector
	rellenarVector(vector, longVector)
	
	//Buscar elemento
	buscarElemento(vector, longVector)
FinAlgoritmo

SubProceso rellenarVector (vector, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		Escribir "#", i+1, ": Ingresa un entero:" Sin Saltar
		Leer vector[i]
	FinPara
	
FinSubProceso

SubProceso buscarElemento(vector, longVector)
	Definir i, num, count Como Entero
	Definir buscar Como Logico
	Definir buscarNuevamente Como Caracter
	
	buscar = Verdadero
	
	Hacer
		Escribir "Que numero deseas buscar?"
		Leer num
		
		count = 0
		
		Escribir ""
		Escribir "Resultado para num ", num
		Escribir "--------------------------"
		
		Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
			Si vector[i] == num Entonces
				Escribir "Encontrado en posicion: ", i
				count = count + 1
			FinSi
		FinPara
		
		Si count == 0 Entonces
			Escribir "El numero ", num, " no se encuentra en el vector"
		FinSi
		
		Escribir "--------------------------"
		Escribir ""
		
		//Pregunar si desea buscar otro numero
		Escribir "Buscar otro numero?"
		Leer buscarNuevamente
		
		Si Minusculas(buscarNuevamente) == "no" Entonces
			buscar = Falso
			Escribir "Hasta pronto"
		FinSi
		
	Mientras Que buscar
	
FinSubProceso

