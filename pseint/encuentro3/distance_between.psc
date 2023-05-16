//Pide al usuario dos números y muestra la "distancia" entre ellos (el valor absoluto de su
//diferencia, de modo que el resultado sea siempre positivo).

Algoritmo distance_between
	Definir num1, num2, distance Como Entero
	
	Escribir "Num 1: "
	Leer num1
	
	Escribir "Num 2: "
	Leer num2
	
	distance = num1 - num2
	
	Si distance > 0 Entonces
		Escribir distance
	SiNo
		Escribir -distance
	Fin Si
	
FinAlgoritmo
