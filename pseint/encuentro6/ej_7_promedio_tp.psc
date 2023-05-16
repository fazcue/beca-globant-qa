Algoritmo promedio_tp
	Definir note1, note2, note3, note4, lowestNote, average Como Real
	
	Escribir "Ingresa las 4 notas:"
	Leer note1, note2, note3, note4
	
	//Encontrar nota mas baja
	lowestNote = note1
	
	Si lowestNote > note2 Entonces
		lowestNote = note2
	FinSi
	
	Si lowestNote > note3 Entonces
		lowestNote = note3
	FinSi
	
	Si lowestNote > note4 Entonces
		lowestNote = note4
	FinSi
	
	//Calcular promedio de notas restantes
	average = (note1 + note2 + note3 + note4 - lowestNote) / 3
	
	Escribir "La nota eliminada es: ", lowestNote
	Escribir "El promedio del estudiante es: ", average
	
FinAlgoritmo
