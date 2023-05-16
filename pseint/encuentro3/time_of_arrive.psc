//Un ciclista parte de una ciudad A a las HH horas, MM minutos y SS segundos. El tiempo
//de viaje hasta llegar a otra ciudad B es de T segundos. Escribir un algoritmo que
//determine la hora de llegada a la ciudad B.

Algoritmo time_of_arrive
	Definir HH, MM, SS, T, totalSeconds Como Entero
	Definir hourOfArrive, minutesOfArrive, secondsOfArrive Como Real
	
	Escribir "Indica la hora exacta cuando partiste de ciudad A"
	
	Escribir "Hora:"
	Leer HH
	
	Escribir "Minutos:"
	Leer MM
	
	Escribir "Segundos:"
	Leer SS
	
	Escribir "Tiempo de viaje (en segundos):"
	Leer T
	
	//convertir tiempo de salida en segundos
	totalSeconds = (HH * 3600) + (MM * 60) + SS + T
	
	//al total de segundos lo divido por segundos * minutos (60 * 60) para obtener el total de horas
	hourOfArrive = trunc(totalSeconds / 3600)
	
	//al total de segundos le resto el total de horas, y lo divido por segundos para obtener total de minutos
	minutesOfArrive = trunc((totalSeconds - (hourOfArrive * 3600)) / 60)
	
	//al total de segundos le resto total de horas (en segundos) y total de minutos (en segundos) para obtener los segundos restantes
	//importante: si es menor a 10, no va a mostrar un 0 denlante de los segundos. Se podria corregir con una condicional
	secondsOfArrive = (totalSeconds - (hourOfArrive * 3600) - (minutesOfArrive * 60))
	
	Escribir "Total segundos: ", hourOfArrive, ":" minutesOfArrive, ":", secondsOfArrive
FinAlgoritmo
