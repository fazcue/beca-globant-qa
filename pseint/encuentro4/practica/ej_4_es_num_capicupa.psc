Algoritmo es_num_capicupa
	Definir num Como Entero
	
	Escribir "Ingresa un numero de 3 cifras."
	Leer num
	
	
	Si (num MOD 10) == (trunc(num / 100)) Entonces
		Escribir "El numero ", num, " es capicua"
	SiNo
		Escribir "Enl numero ", num, " no es capicua"
	FinSi
FinAlgoritmo
