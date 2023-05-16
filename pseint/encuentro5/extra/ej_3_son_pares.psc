Algoritmo son_pares
	Definir num1, num2 Como Entero
	
	Escribir "Ingresa un numero por linea:"
	Leer num1
	Leer num2
	
	Si (num1 MOD 2 == 0) Y (num2 MOD 2 == 0) Entonces
		Escribir "Ambos numeros son pares"
	SiNo
		Escribir "Los numeros no son pares, o uno de ellos no es par"
	FinSi
	
FinAlgoritmo
