Algoritmo login_usuario
	Definir USER_CODE, PASSWORD, code, pass Como Entero
	
	//Constantes
	USER_CODE = 1024
	PASSWORD = 4567
	
	//Bucle hacer mientras USER_CODE <> code O PASSWORD <> pass
	Hacer
		
		//Solicito codigo de usuario
		Escribir "Ingresa tu codigo de usuario:"
		Leer code
		
		//Solicito contraseña
		Escribir "Ingresa tu contraseña:"
		Leer pass
		
		//Si los datos ingresados son mayor a 0, comprobar si son correctos
		//Sino, mostrar mensaje de error
		Si code > 0 Y pass > 0 Entonces
			
			//Si coinciden tanto code como pass, dar acceso
			//Sino, mostrar mensaje de error
			Si (code == USER_CODE) Y (pass == PASSWORD) Entonces
				Escribir "Login correcto. Ingresando al sistema..."
			SiNo
				Escribir "Datos incorrectos. Prueba nuevamente."
			FinSi
			
		SiNo
			Escribir "Los datos ingresados deben ser numeros enteros positivos."
		FinSi
		
	Mientras Que (USER_CODE <> code) O (PASSWORD <> pass)
	
FinAlgoritmo
