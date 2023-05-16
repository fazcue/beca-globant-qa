Algoritmo maximo_6_caracteres
	Definir word Como Caracter
	Definir count Como Entero
	
	Escribir "Ingresa una palabra o frase de maximo 6 caracteres:"
	Leer word
	
	count = Longitud(word)
	
	Si count == 6 Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo
