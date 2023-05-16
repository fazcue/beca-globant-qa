Algoritmo suma_numeros_naturales_recursivo
	Definir limite, suma Como Entero
	
	Escribir "Limite:" Sin Saltar
	Leer limite
	
	suma = calcularSuma(limite)
	
	Escribir "La suma de los ", limite, " numeros naturales es: ", suma
	
FinAlgoritmo

Funcion suma <- calcularSuma(limite)
	Definir suma Como Entero
	
	Si limite == 1 Entonces
		suma = limite
	SiNo
		suma = limite + calcularSuma(limite - 1)
	FinSi
	
FinFuncion
