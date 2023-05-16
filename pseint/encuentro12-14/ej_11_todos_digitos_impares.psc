Algoritmo todos_digitos_impares
	Definir num Como Entero
	Definir impares Como Logico
	
	//Solicitar numero
	Escribir "Ingresa un numero:"
	Leer num
	
	//Comprobar si esta compuesto por todos digitos impares o no
	impares = digitosImpares(num)
	
	//Mostrar info
	Escribir "El numero ", num, " esta compuesto solamente por digitos impares? ", impares
	
FinAlgoritmo

Funcion esImpar <- digitosImpares (num)
	Definir esImpar Como Logico
	Definir digito Como Entero
	
	//Variables
	esImpar = Verdadero
	
	Mientras (num > 0) Y esImpar Hacer
		
		//Obtener el digito de la unidad
		digito = num MOD 10
		
		//Si el digito es par, entonces cambiar valor a falso
		Si digito MOD 2 == 0 Entonces
			esImpar = Falso
		SiNo
			//Eliminar dicho digito de num
			num = Trunc(num / 10)
		FinSi
		
	FinMientras
	
FinFuncion
