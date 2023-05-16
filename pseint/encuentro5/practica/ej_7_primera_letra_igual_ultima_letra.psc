Algoritmo primera_letra_igual_ultima_letra
	Definir word, firstLetter, lastLetter Como Caracter
	Definir count Como Entero
	
	Escribir "Ingresa una palabra o frase:"
	Leer word
	
	count = Longitud(word)
	
	firstLetter = Subcadena(word, 0, 0)
	lastLetter = Subcadena(word, count - 1, count - 1)
	
	Si firstLetter == lastLetter Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
