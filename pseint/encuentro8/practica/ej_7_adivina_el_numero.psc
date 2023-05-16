Algoritmo adivina_el_numero
	Definir num, secretNum, MIN, MAX, count Como Entero
	Definir play Como Caracter
	
	//Constantes
	MIN = 1
	MAX = 10
	
	//Variables
	play = "s"
	
	Hacer
		//Variables
		count = 1
		
		//Obtengo un numero aleatorio entre MIN y MAX
		secretNum = Aleatorio(MIN, MAX)
		
		//Mensaje introduccion al juego
		Escribir "Juego: ¡Adivina el numero!"
		Escribir "rango: entre ", MIN, " y ", MAX, ". Ingresa solo numeros enteros"
		Escribir ""
		
		//Bucle hacer mientras num <> secretNum
		Hacer
			//Solicito numero (1era vez: count == 1, muestra un mensaje; sino muestra otro)
			Si count == 1 Entonces
				Escribir "Intento #1: Ingresa un numero:"
			SiNo
				Escribir "Intento #", count, ": Ingresa otro numero:"
			FinSi
			
			Leer num
			
			//Si el numero ingresado no es igual al numero secreto
			Si num <> secretNum Entonces
				
				//Compruebo si es mayor o menor, e indico con un mensaje
				Si num > secretNum Entonces
					Escribir "El numero secreto es menor a ", num
				SiNo
					Escribir "El numero secreto es mayor a ", num
				FinSi
				
				Escribir ""
				
				//Incremento el contador en +1
				count = count + 1
				
			FinSi
		Mientras Que num <> secretNum
		
		//Muestro info cuando el juego finaliza
		Escribir "Ganaste! El numero secreto era: ", secretNum
		Escribir "Lo adivinaste en ", count, " intento/s"
		
		Escribir ""
		Escribir "Deseas jugar nuevamente? S/N"
		Leer play
		
	Mientras Que Minusculas(play) <> "n"
	
	Escribir "Adios!"
FinAlgoritmo
