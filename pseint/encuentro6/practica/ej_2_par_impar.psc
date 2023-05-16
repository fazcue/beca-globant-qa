Algoritmo par_impar
	Definir num Como Entero
	
	Escribir "Ingresa un numero entero:"
	Leer num
	
	Si num == 0 Entonces
		Escribir "El numero no es par ni impar."
	SiNo
		Si num MOD 2 == 0 Entonces
			Escribir "El numero es par"
		SiNo
			Escribir "El numero es impar"
		FinSi
	FinSi
	
FinAlgoritmo
