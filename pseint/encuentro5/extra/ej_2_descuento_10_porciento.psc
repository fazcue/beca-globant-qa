Algoritmo descuento_10_porciento
	Definir month Como Caracter
	Definir amount Como Real
	
	Escribir "Ingresa el mes actual:"
	Leer month
	
	Escribir "Ingresa el importe:"
	Leer amount
	
	Si month == "Septiembre"  O month == "Octubre" O month == "Noviembre" Entonces
		amount = amount - amount * 0.1
	FinSi
	
	Escribir "El importe final es: ", amount
	
FinAlgoritmo
