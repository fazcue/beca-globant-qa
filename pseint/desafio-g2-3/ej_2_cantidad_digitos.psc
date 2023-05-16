Algoritmo ej_2_cantidad_digitos
	Definir i, num, aux, totalDigits Como Entero
	
	//Variables
	totalDigits = 0
	
	//Solicito numero entero
	Escribir "Ingresa un numero entero:"
	Leer num
	
	//Si num == 0, totalDigits es igual a 1, sino calcular
	Si num == 0 Entonces
		totalDigits = 1
	SiNo
		
		//Guardo el num en aux, para no sobreescribirlo
		aux = num
		
		//Calcular total de digitos mientras aux <> 0
		Mientras aux <> 0 Hacer
			
			aux = trunc(aux / 10)
			totalDigits = totalDigits + 1
			
		FinMientras
		
	FinSi
	
	Escribir "El total de digitos en ", num, " es: ", totalDigits
	
FinAlgoritmo
