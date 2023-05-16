Algoritmo suma_digitos
	Definir num, suma Como Entero
	
	//Solicitar numero
	Escribir "Ingresa un numero:"
	Leer num
	
	//Calcular la suma
	suma = sumarDigitos(num)
	
	//Mostrar info
	Escribir "La suma de los digitos en ", num, " es igual a: ", suma
	
FinAlgoritmo

Funcion suma <- sumarDigitos (num)
	Definir suma Como Entero
	
	//Variables
	suma = 0
	
	//Si es menor a 0, lo convierto a positivo
	Si num < 0 Entonces
		num = -(num)
	FinSi
	
	//Sumar resto, y correr la coma en cada vuelta
	Mientras num <> 0 Hacer
		
		suma = suma + (num MOD 10)
		num = Trunc(num / 10)
		
	FinMientras
	
FinFuncion
