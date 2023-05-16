Algoritmo login_usuario
	Definir user, pass Como Caracter
	Definir isLoggedIn Como Logico
	
	Escribir "Intento #1"
	Escribir "Ingresa tu usuario:"
	Leer user
	
	Escribir "Ingresa tu contraseña:"
	Leer pass
	
	isLoggedIn = Login(user, pass)
	
	Si isLoggedIn Entonces
		Escribir "Bienvenido!"
	SiNo
		Escribir "Superaste el limite de intentos."
	FinSi

FinAlgoritmo

Funcion retorno <- Login (user, pass)
	Definir retorno Como Logico
	Definir USERNAME, PASSWORD Como Caracter
	Definir MAX_TRIES, tries Como Entero

	//Constantes
	USERNAME = "usuario1"
	PASSWORD = "asdasd"
	MAX_TRIES = 3
	
	//Variables
	retorno = Falso
	tries = 1
	
	Si (user == USERNAME) Y (pass == PASSWORD) Entonces
		retorno = Verdadero
	SiNo
		
		Mientras NO retorno Y (tries < MAX_TRIES)
			tries = tries + 1
			
			Escribir "Ingreso incorrecto..."
			Escribir ""
			
			Escribir "Intento #", tries
			Escribir "Ingresa tu usuario:"
			Leer user
			
			Escribir "Ingresa tu contraseña:"
			Leer pass
			
			Si (user == USERNAME) Y (pass == PASSWORD) Entonces
				retorno = Verdadero
			FinSi
			
		FinMientras 
		
	FinSi
	
FinFuncion
