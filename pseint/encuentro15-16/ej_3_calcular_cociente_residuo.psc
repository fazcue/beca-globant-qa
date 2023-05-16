Algoritmo calcular_cociente_residuo
	Definir dividendo, divisor, cociente, residuo Como Entero
	
	//Solicitar datos
	Escribir "Igresa el dividendo:" Sin Saltar
	Leer dividendo
	
	Escribir "Igresa el divisor:" Sin Saltar
	Leer divisor
	
	//Calcular cociente y residuo
	cocienteResiduo(dividendo, divisor, cociente, residuo)
	
	//Mostrar info
	Escribir "El residuo es: ", residuo, " y el cociente es: ", cociente
	
FinAlgoritmo

SubProceso cocienteResiduo (dividendo, divisor, cociente Por Referencia, residuo Por Referencia)
	//Variables
	residuo = dividendo
	cociente = 0
	
	//Mientras residuo sea mayor a divisor
	Mientras residuo > divisor Hacer
		
		//Restar divisor
		residuo = residuo - divisor
		
		//Sumar +1
		cociente = cociente + 1
		
	FinMientras
FinSubProceso
