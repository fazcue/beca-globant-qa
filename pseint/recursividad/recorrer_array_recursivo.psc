Algoritmo recorrer_array_recursivo
	Definir numArray Como Entero
	Dimension numArray[5]
	
	numArray[0] = 2
	numArray[1] = 3
	numArray[2] = 4
	numArray[3] = 5
	numArray[4] = 6
	
	recorrerArray(numArray, 4)
	
FinAlgoritmo

SubProceso recorrerArray (numArray, longArray)	
	Si longArray == 1 Entonces
		Escribir numArray[longArray - 1]
	SiNo
		recorrerArray(numArray, longArray - 1)
	FinSi
	
	Escribir numArray[longArray]
	
FinSubProceso
