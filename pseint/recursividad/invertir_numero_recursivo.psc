Algoritmo invertir_numero_recursivo
	Definir num, numInvertido Como Entero
	
	Escribir "Num:" Sin Saltar
	Leer num
	
	numInvertido = invertir(num)
	
	Escribir "Numero invertido: ", numInvertido
FinAlgoritmo

Funcion numInvertido <- invertir (num)
	Definir numInvertido, aux, pos Como Entero
	
	//Condicional caso final
	Si num <= 9 Entonces
		numInvertido = num
	SiNo
		//Contar cantidad digitos en num
		aux = num
		pos = 0
		
		Mientras aux > 9 Hacer
			pos = pos + 1
			aux = Trunc(aux / 10)
		FinMientras
		
		//Invertir
		numInvertido = (num % 10) * (10^pos) + invertir(Trunc(num / 10))
	FinSi
	
FinFuncion
