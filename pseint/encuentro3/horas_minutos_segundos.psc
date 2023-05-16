Algoritmo horas_minutos_segundos
	Definir days, hours, minutes, seconds Como Enteros
	
	Escribir "Vamos a calcular cantidad de horas, minutos y segundos segun cantidad de dias..."
	
	Escribir "Ingresa cantidad de dias:"
	Leer days
	
	hours = days * 24
	minutes = hours * 60
	seconds = minutes * 60
	
	Escribir days, " dia/s equivale a:"
	Escribir hours, " horas."
	Escribir minutes, " minutos."
	Escribir seconds, " segundos."
	
FinAlgoritmo
