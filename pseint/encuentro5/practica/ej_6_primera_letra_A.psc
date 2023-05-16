Algoritmo primera_letra_A
	Definir word, firstLetter Como Caracter
	
	Escribir "Ingresa una palabra o frase:"
	Leer word
	
	firstLetter = SubCadena(word,0,0)
	
	Si firstLetter = "A" Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
