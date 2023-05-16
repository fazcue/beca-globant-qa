Algoritmo eureka
	Definir PASSWORD, res Como Caracter
	Definir MAX_TRIES, count Como Entero
	
	//Constantes
	PASSWORD = "eureka"
	MAX_TRIES = 3
	
	//Variables
	count = 1
	
	Hacer
		//Solicito contraseña
		Escribir "Intento #", count, " de ", MAX_TRIES, ". Ingresa la contraseña:"
		Leer res
		
		//Si es correcta, muestro mensaje ingresando al sistema
		Si res == PASSWORD Entonces
			Escribir "Contraseña correcta. Ingresando al sistema..."
		SiNo
			//si supero el limite de MAX_TRIES, no volver a permitir intentos;
			//sino, mostrar mensaje de contraseña incorrecta
			count = count + 1
			Si count > MAX_TRIES Entonces
				Escribir "Superaste el limite de intentos."
			SiNo
				Escribir "Contraseña incorrecta"
			FinSi
		FinSi
		
	Mientras Que (count <= MAX_TRIES) Y (PASSWORD <> res)
FinAlgoritmo
