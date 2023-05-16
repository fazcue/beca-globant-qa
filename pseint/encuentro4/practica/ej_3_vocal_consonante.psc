Algoritmo vocal_consonante
	Definir letra Como Caracter
	
	Escribir "Ingresa una letra:"
	Leer letra
	
	Si (Minusculas(letra) == 'a' O Minusculas(letra) == 'e' O Minusculas(letra) == 'i' O Minusculas(letra) == 'o' O Minusculas(letra) == 'u') Entonces
		Escribir "La letra ", letra, " es vocal"
	SiNo
		Escribir "La letra ", letra, " es consonante"
	FinSi
FinAlgoritmo
