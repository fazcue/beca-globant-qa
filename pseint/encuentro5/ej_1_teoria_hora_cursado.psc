Algoritmo hora_cursado
	Definir horaConexion, horaCurso Como Entero
	
	//Variables
	horaCurso = 1900
	
	Escribir "Ingresa la hora (formato militar: HHMM)"
	Leer horaConexion
	
	Si (horaConexion <= horaCurso + 15) Entonces
		Escribir "Llegaste a tiempo, tienes presente"
	SiNo
		Escribir "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde. Mañana te esperamos a tiempo, tu participacion en el equipo es VITAL"
	FinSi
	
FinAlgoritmo
