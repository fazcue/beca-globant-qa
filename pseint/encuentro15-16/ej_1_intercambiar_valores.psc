Algoritmo intercambio_valores
	Definir a, b Como Entero
	
	//Solicitar datos
	ingresarValores(a, b)
	
	//Intercambiar valores
	intercambiarValores(a, b)
	
	//Mostrar datos
	imprimirValores(a, b)
	
FinAlgoritmo

SubProceso ingresarValores (a Por Referencia, b Por Referencia)
	Escribir "Ingresa la variable A:" Sin Saltar
	Leer a
	
	Escribir "Ingresa la variable B:" Sin Saltar
	Leer b
FinSubProceso

SubProceso intercambiarValores (a Por Referencia, b Por Referencia)
	Definir aux Como Entero
	
	//Guardar valor de "a" en variable "aux"
	aux = a
	
	//Asignar valor de "b" a variable "a"
	a = b
	
	//Asignar valor de "aux" a variable "b"
	b = aux
FinSubProceso

SubProceso imprimirValores (a, b)
	
	Escribir ""
	Escribir "Intercambio de variables"
	Escribir "A: ", a, " | B: ", b
	
FinSubProceso
