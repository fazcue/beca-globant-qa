Algoritmo par_impar
	Definir res Como Logico
	Definir num Como Real
	
	Escribir "Ingresa un numero:"
	Leer num
	
	res = esPar(num)
	
	Escribir Sin Saltar "El numero ", num
	
	Si res Entonces
		Escribir Sin Saltar " es par."
	SiNo
		Escribir Sin Saltar " es impar."
	FinSi
	
	Escribir ""
	
FinAlgoritmo

Funcion res <- esPar (num)
	Definir res Como Logico
	
	res = num MOD 2 == 0
FinFuncion
