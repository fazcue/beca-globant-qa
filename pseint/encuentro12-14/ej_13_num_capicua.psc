//Realizar una función que reciba un numero ingresado por el usuario y averigüe
//si el número es capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD
//y el Trunc. No podemos transformar el numero a cadena para realizar el ejercicio.

Algoritmo num_capicua
	Definir num Como Entero
	Definir esCapicua Como Logico
	
	//Solicitar numero
	Escribir "Ingresa un numero:"
	Leer num
	
	//Verificar si es capicua
	esCapicua = capicua(num)
	
	//Mostrar info
	Escribir "El numero ", num, " es capicua? ", esCapicua
	
FinAlgoritmo

Funcion esCapicua <- capicua (num)
	Definir esCapicua Como Logico
	Definir pos1, posN, aux, ubicacionPosN Como Entero
	
	//Variables
	esCapicua = Verdadero
	
	//Mientras num sea mayor a 9 (al menos doble digitos) y esCapicua siga siendo verdadero
	Mientras (num > 9) Y esCapicua Hacer
		
		//Asignar el valor actual de num a aux (variable que se utilizará para obtener posN)
		aux = num
		ubicacionPosN = 0
		
		//Obtener Unidad (pos1)
		pos1 = num MOD 10
		
		//Obtener posN
		Mientras aux <> 0 Hacer
			posN = aux MOD 10
			aux = Trunc(aux / 10)
			
			//Añadir cantidad de ceros (para luego eliminar posN)
			Si ubicacionPosN == 0 Entonces
				ubicacionPosN = 1
			SiNo
				ubicacionPosN = ubicacionPosN * 10
			FinSi
		FinMientras
		
		//Si pos1 es distinto a posN, entonces NO es capicua
		Si pos1 <> posN Entonces
			esCapicua = Falso
		SiNo
			//Eliminar PosN (restando)
			num = num - (posN * ubicacionPosN)
			
			//Eliminar unidad
			num = Trunc(num / 10)
		FinSi
		
	FinMientras

FinFuncion
