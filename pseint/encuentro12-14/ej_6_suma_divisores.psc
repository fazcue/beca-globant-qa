Algoritmo suma_divisores
	Definir num, sum Como Entero
	
	Escribir "Ingresa un numero:"
	Leer num
	
	sum = sumaDivisores(num)
	
	Escribir "La suma de los divisores de ", num, " es igual a ", sum
	
FinAlgoritmo

Funcion sum <- sumaDivisores (num)
	Definir i, sum Como Entero
	
	sum = 0
	
	Para i = 1 Hasta num - 1 Con Paso 1 Hacer
		
		Si num MOD i == 0 Entonces
			sum = sum + i
		FinSi
		
	FinPara
	
FinFuncion
