Algoritmo verduleria
	Definir apples, price Como Entero
	Definir total Como Real
	
	Escribir "El precio por kilo de la manzana es de...?"
	Leer price
	
	Escribir "Cuantos kilos de manzanas quieres?"
	Leer apples
	
	Si apples <= 2 Entonces
		total = apples * price
	SiNo
		Si apples > 2 Y apples <= 5 Entonces
			total = apples * price * 0.90
		SiNo
			Si apples > 5 Y apples <= 10 Entonces
				total = apples * price * 0.85
			SiNo
				total = apples * price * 0.80
			FinSi
		FinSi
	FinSi
	
	Escribir "Llevas ", apples, " kilos de manzana. El total es: ", total
	
FinAlgoritmo
