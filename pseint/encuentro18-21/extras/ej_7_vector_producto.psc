Algoritmo ej_7_vector_producto
	Definir vector, longVector, producto Como Entero
	
	//Crear vector
	longVector = 2
	Dimension vector[longVector]
	
	//Generar valores aleatoriamente
	generarValoresAleatoriamente(vector, longVector)
	
	//Calcular producto del vector
	producto = calcularProducto(vector, longVector)
	
	//Mostrar vector
	mostrarVector(vector, longVector)
	
	//Mostrar resultado del producto
	Escribir "El producto de los valores del vector es igual a: ", producto
	
FinAlgoritmo

SubProceso generarValoresAleatoriamente (vector, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		vector[i] = Aleatorio(1, 20)
	FinPara
	
FinSubProceso

Funcion producto <- calcularProducto (vector, longVector)
	Definir i, producto Como Entero
	
	producto = 1
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		producto = producto * vector[i]
	FinPara
	
FinFuncion

SubProceso mostrarVector (vector, longVector)
	Definir i Como Entero
	
	Escribir "[ " Sin Saltar
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		Escribir vector[i], " " Sin Saltar
	FinPara
	
	Escribir "]"
	Escribir ""
	
FinSubProceso