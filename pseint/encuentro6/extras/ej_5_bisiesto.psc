Algoritmo bisiesto
	Definir year Como Entero
	Definir isLeapYear Como Logico
	
	Escribir "Ingresa un a�o:"
	Leer year
	
	isLeapYear = Falso
	
	//Verificar si es bisiesto
	//a�o divisible por 4, y NO divisible por 100
	isLeapYear = (year MOD 4 == 0) Y No (year MOD 100 == 0)
	
	//Si no es bisiesto:
	//a�o divisible por 100, Y divisible por 400
	Si No isLeapYear Entonces
		isLeapYear = (year MOD 100 == 0) Y (year MOD 400 == 0)
	FinSi
	
	Escribir "Es el a�o ", year, " bisiesto? ", isLeapYear
	
FinAlgoritmo
