Algoritmo ej_3_maquina_reciclaje
	Definir USER, PASS, userName, password Como Caracter
	Definir MAX_TRIES, counter Como Entero
	Definir Login, firstTime Como Logico
	
	//Variables menu
	Definir selectedMenu Como Caracter
	
	//Variables saldo
	Definir balance Como Real
	
	//Variables botellas
	Definir i, totalBottles, valueOfBottle, weight Como Entero
	Definir sellOrNotSell Como Caracter
	
	//Constantes
	USER = "Albus_D"
	PASS = "caramelosDeLimon"
	MAX_TRIES = 3
	
	//Variables
	Login = Falso
	firstTime = Verdadero
	counter = 1
	balance = 0
	
	//Solicito nombre de usuario
	Escribir "Ingresa tu nombre de usuario:"
	Leer userName
	
	//Comprobar usuario y contraseña
	Si userName == USER Entonces
		
		//Máximo 3 intentos para ingresar la contraseña
		Mientras NO Login Y (counter <= MAX_TRIES) Hacer
			
			Escribir "#", counter, " de ", MAX_TRIES, ": Ingresa tu contraseña:"
			Leer password
			
			Si password == PASS Entonces
				Login = Verdadero
			SiNo
				Escribir "Contraseña inválida."
			FinSi
			
			counter = counter + 1
			
		FinMientras
		
		//Mensaje si supero el limite de intentos
		Si NO Login Entonces
			Escribir "Superaste el limite de intentos."
		FinSi
		
	SiNo
		Escribir "Usuario no encontrado."
	FinSi
	
	//Si ingreso correctamente, acceder al menu de opciones
	Mientras Login Hacer
		
		//Menu
		Si firstTime Entonces
			Escribir ""
			Escribir "Bienvenido/a al sistema de reciclaje!"
			
			firstTime = Falso
		FinSi
		
		Escribir "Elije una opcion:"
		Escribir "----------------------"
		Escribir "#1: Ingresar botellas"
		Escribir "#2: Consultar saldo"
		Escribir "#3: Salir"
		Escribir "----------------------"
		Leer selectedMenu
		
		Segun Minusculas(selectedMenu) Hacer
			
			"ingresar botellas","1":
				
				//Solicitar cantidad de botellas
				Hacer
					Escribir "Cuantas botellas desea ingresar?"
					Leer totalBottles
				Mientras Que totalBottles < 0
				
				//Si ingresa al menos 1 botella, continuar
				Si totalBottles > 0 Entonces
					
					//Bucle para cada botella...
					Para i = 1 Hasta totalBottles Hacer
						
						//Obtener su peso en gramos, aleatoriamente
						weight = Aleatorio(100, 3000)
						
						//Asignar valor de botella segun su peso
						Si weight <= 500 Entonces
							valueOfBottle = 50
						SiNo
							Si weight > 500 Y weight <= 1500 Entonces
								valueOfBottle = 125
							SiNo
								valueOfBottle = 200
							FinSi
						FinSi
						
						//Preguntar si acepta el precio ofrecido
						Escribir "Botella #", i, " (peso: ", weight, "g)"
						Escribir "Desea venderla por $", valueOfBottle, "? S/N"
						Leer sellOrNotSell
						
						Si Minusculas(sellOrNotSell) == 's' O Minusculas(sellOrNotSell) == 'si' Entonces
							balance = balance + valueOfBottle
							Escribir "Botella vendida. Se acredito un total de $", valueOfBottle, " en su saldo."
							Escribir ""
						SiNo
							Escribir "Devolviendo material..."
							Escribir ""
						FinSi
						
					FinPara
					
				SiNo
					Escribir "Volviendo al menu..."
					Escribir ""
				FinSi
				
			"consultar saldo","2":
				
				Escribir "Tu saldo actual es: $", balance
				Escribir ""
				
			"salir","3":
				
				Login = Falso
				Escribir "Sesion finalizada correctamente."
				
		FinSegun
		
	FinMientras
	
FinAlgoritmo
