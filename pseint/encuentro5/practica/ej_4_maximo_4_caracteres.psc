Algoritmo maximo_4_caracteres
	Definir word Como Caracter
	Definir count Como Entero
	
	Escribir "Ingresa una palabra de máximo 4 caracteres:"
	Leer word
	
	count = Longitud(word)
	
	Si count == 4 Entonces
		word = Concatenar(word, "!")
	SiNo
		word = Concatenar(word, "?")
	FinSi
	
	Escribir word
	
FinAlgoritmo
