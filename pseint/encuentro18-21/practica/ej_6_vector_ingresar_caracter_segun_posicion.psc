Algoritmo ej_6_vector_ingresar_caracter_segun_posicion
	Definir longVector Como Entero
	Definir vector, frase Como Caracter
	
	longVector = 20
	Dimension vector[longVector]
	
	//Solicitar frase
	ingresarFrase(frase, longVector)
	
	//Rellenar vector con frase valida
	rellenarVector(vector, longVector, frase)
	
	//Ingresar caracter nuevo en posicion deseada
	ingresarCaracter(vector, longVector)
	
FinAlgoritmo

SubProceso ingresarFrase (frase Por Referencia, longVector)
	frase = ""
	
	Hacer
		Escribir "Ingresa una frase de hasta ", longVector, " caracteres:"
		Leer frase
		
		Si Longitud(frase) > longVector Entonces
			Escribir ""
			Escribir "ERROR: Frase no válida."
			Escribir "---------------------------------------------"
			Escribir " Superaste el limite de caracteres por ", Longitud(frase) - longVector, " :/"
			Escribir "---------------------------------------------"
			Escribir ""
		FinSi
		
	Mientras Que Longitud(frase) > longVector
	
FinSubProceso

SubProceso rellenarVector (vector, longVector, frase Por Referencia)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		
		//"Copiar" caracter posicion actual de frase a vector[i]
		//Sino, rellenar con espacio vacio
		Si Longitud(frase) > i Entonces
			vector[i] = Subcadena(frase, i, i)
		SiNo
			vector[i] = " "
		FinSi
		
	FinPara
FinSubProceso

SubProceso ingresarCaracter (vector, longVector)
	Definir char, ingresarNuevamente Como Caracter
	Definir pos, i Como Entero
	Definir ingresar Como Logico
	
	ingresar = Verdadero
	
	Hacer
		//Solicitar caracter
		Escribir "Que caracter deseas añadir?" Sin Saltar
		Leer char
		
		//Solicitar posicion
		Hacer
			Escribir "En que posicion?" Sin Saltar
			Leer pos
			
			Si pos < 0 O pos > longVector - 1 Entonces
				Escribir "Posicion no valida"
				Escribir ""
			FinSi
		Mientras Que pos < 0 O pos > longVector - 1
		
		//Añadir caracter en posicion si esta vacia
		Si vector[pos] == " " Entonces
			vector[pos] = char
			
			Escribir ""
			Escribir "Caracter ingresado correctamente:"
			Escribir "---------------------------------"
			mostrarVector(vector, longVector)
			Escribir "---------------------------------"
			Escribir ""
		SiNo
			Escribir ""
			Escribir "Posicion ya ocupada. No se ingreso el caracter"
			Escribir ""
		FinSi
		
		Escribir "Deseas añadir otro caracter?" Sin Saltar
		Leer ingresarNuevamente
		
		Si Minusculas(ingresarNuevamente) == "no" Entonces
			ingresar = Falso
			Escribir "Hasta pronto."
		FinSi
		
	Mientras Que ingresar

FinSubProceso

SubProceso mostrarVector (vector, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		Escribir vector[i] Sin Saltar
	FinPara
	
	Escribir ""
	
FinSubProceso
