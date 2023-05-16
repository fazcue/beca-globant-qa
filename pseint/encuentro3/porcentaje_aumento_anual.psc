Algoritmo porcentaje_aumento_anual
	Definir precioInicial, precioFinal, porcentajeAumento Como Real
	
	Escribir "Vamos a calcular el porcentaje de aumento anual de un producto..."
	
	Escribir "1ero: ingresa el precio a comienzo del año:"
	Leer precioInicial
	
	Escribir "2do: ingresa el precio a fin de año:"
	Leer precioFinal
	
	porcentajeAumento = (precioFinal - precioInicial) / precioInicial * 100
	
	Escribir "El porcentaje de aumento fue de: ", porcentajeAumento, "%"
	
FinAlgoritmo
