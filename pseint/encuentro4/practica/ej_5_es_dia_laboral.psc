Algoritmo es_dia_laboral
	Definir dia Como Caracter
	
	Escribir "Ingresa un día:"
	Leer dia
	
	Si (Minusculas(dia) == 'lunes' O Minusculas(dia) == 'martes' O Minusculas(dia) == 'miercoles' O Minusculas(dia) == 'jueves' O Minusculas(dia) == 'viernes') Entonces
		Escribir dia, " es dia laboral"
	SiNo
		Escribir dia, " NO es dia laboral"
	FinSi
FinAlgoritmo
