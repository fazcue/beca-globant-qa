Algoritmo caracter_a_numero
	Definir numeroCadena Como Caracter
	Definir numeroConvertido Como Entero
	
	//Solicitar numero (cadena)
	Escribir "ingresa un numero (será guardado como Caracter):"
	Leer numeroCadena
	
	//Convertir cadena a numero
	numeroConvertido = ConvertirANum(numeroCadena)
	
	//Mostrar resultado
	Escribir "El caracter ", numeroCadena, " es igual a: ", numeroConvertido
	
	Escribir "Prueba: ", numeroConvertido, " + 10: ", numeroConvertido + 10
	
FinAlgoritmo

Funcion num <- ConvertirANum (numeroCadena)
	Definir i, long, num Como Entero
	Definir car Como Caracter
	
	//Longitud de la cadena
	long = Longitud(numeroCadena)
	
	//Variables
	num = 0
	
	//Para caracter en pos 0 hasta "long - 1"
	Para i = 0 Hasta long - 1 Con Paso 1 Hacer
		
		//Caracter actual
		car = Subcadena(numeroCadena, i, i)
		
		//Segun car, obtener ubicacion del digito y sumar num previo
		//1000
		
		Segun car Hacer
			"0":
				num = ubicarDigito(long - i, 0) + num
			"1": 
				num = ubicarDigito(long - i, 1) + num
			"2": 
				num = ubicarDigito(long - i, 2) + num
			"3": 
				num = ubicarDigito(long - i, 3) + num
			"4": 
				num = ubicarDigito(long - i, 4) + num
			"5": 
				num = ubicarDigito(long - i, 5) + num
			"6": 
				num = ubicarDigito(long - i, 6) + num
			"7": 
				num = ubicarDigito(long - i, 7) + num
			"8": 
				num = ubicarDigito(long - i, 8) + num
			"9": 
				num = ubicarDigito(long - i, 9) + num
		FinSegun
		
	FinPara
	
FinFuncion

Funcion retorno <- ubicarDigito (pos, num)
	Definir i, retorno Como Entero
	
	//Si la posicion es unidad, devolver num
	//Sino, añadir cantidad de ceros necesarios
	Para i = 1 Hasta pos Con Paso 1 Hacer
		
		Si i == 1 Entonces
			retorno = num
		SiNo
			retorno = retorno * 10
		FinSi

	FinPara
	
FinFuncion
