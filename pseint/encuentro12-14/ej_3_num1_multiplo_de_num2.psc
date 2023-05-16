Algoritmo num1_multiplo_de_num2
	Definir num1, num2 Como Real
	
	Escribir "Ingresa el 1er numero:"
	Leer num1
	
	Escribir "Ingresa el 2do numero:"
	Leer num2
	
	Escribir num1, " es multiplo de ", num2, ": ", esMultiplo(num1, num2)
	
FinAlgoritmo

Funcion retorno <- esMultiplo (num1, num2)
	Definir retorno Como Logico
	
	retorno = Falso
	
	Si num2 MOD num1 == 0 Entonces
		retorno = Verdadero
	FinSi
FinFuncion
