Algoritmo porcentaje_generos
	Definir m, f, total Como Entero
	Definir porcentajeM, porcentajeF Como Real
	
	Escribir "Vamos a calcular el porcentaje de ni�os y ni�as en un curso..."
	
	Escribir "1ero: ingresa cantidad de ni�os:"
	Leer m
	
	Escribir "2do: ingresa cantidad de ni�as:"
	Leer f
	
	total = m + f
	
	porcentajeM = m * 100 / total
	porcentajeF = f * 100 / total
	
	Escribir "El porcentaje de ni�os es: ", porcentajeM, "%"
	Escribir "El porcentaje de ni�as es: ", porcentajeF, "%"
	
FinAlgoritmo
