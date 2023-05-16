Algoritmo aprobado_desaprobado
	Definir note1, note2, note3, average Como Real
	
	Escribir "Ingresa una nota por linea:"
	Leer note1
	Leer note2
	Leer note3
	
	average = (note1 + note2 + note3) / 3
	
	Si average >= 7 Entonces
		Escribir "Aprobado!"
	SiNo
		Escribir "Desaprobado!"
	FinSi
	
FinAlgoritmo
