Algoritmo validar_notas
	Definir note1, note2, note3 Como Entero
	Definir isCorrect Como Logico
	
	isCorrect = Falso
	
	Escribir "Ingresa una nota por linea:"
	Leer note1, note2, note3
	
	Si (note1 > 0 Y note1 <= 10) Y (note2 > 0 Y note2 <= 10) Y (note3 > 0 Y note3 <= 10) Entonces
		isCorrect = Verdadero
	FinSi
	
	Escribir isCorrect
	
FinAlgoritmo
