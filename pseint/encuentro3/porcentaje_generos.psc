Algoritmo porcentaje_generos
	Definir m, f, total Como Entero
	Definir porcentajeM, porcentajeF Como Real
	
	Escribir "Vamos a calcular el porcentaje de niños y niñas en un curso..."
	
	Escribir "1ero: ingresa cantidad de niños:"
	Leer m
	
	Escribir "2do: ingresa cantidad de niñas:"
	Leer f
	
	total = m + f
	
	porcentajeM = m * 100 / total
	porcentajeF = f * 100 / total
	
	Escribir "El porcentaje de niños es: ", porcentajeM, "%"
	Escribir "El porcentaje de niñas es: ", porcentajeF, "%"
	
FinAlgoritmo
