Algoritmo calculadora
	//Defino variables
	Definir num1, num2 Como Entero
	Definir res Como Real
	Definir type Como Caracter
	Definir error Como Logico
	
	error = Falso
	
	//Solicito ingreso de los numeros
	Escribir "Ingresa num 1:"
	Leer num1
	
	Escribir "Ingresa num 2:"
	Leer num2
	
	//Solicito ingreso de tipo de operacion
	Escribir "Sumar (S), restar (R), multiplicar (M) o dividir (D)?"
	Leer type
	
	//Calcular res segun tipo de operacion
	Segun Minusculas(type) Hacer
		"s":
			res = num1 + num2
		"r":
			res = num1 - num2
		"m":
			res = num1 * num2
		"d":
			res = num1 / num2
		De Otro Modo:
			error = Verdadero
	FinSegun
	
	//Muestro mensaje final
	Si No error Entonces
		Escribir "El resultado es: ", res
	SiNo
		Escribir "Tipo de operación inválida: ", type
	FinSi

FinAlgoritmo
