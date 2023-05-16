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
	
	//Desplazamiento
	Definir distanciaIzq, distanciaDer Como Entero
	
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
			mostrarVector(vector, longVector)
		SiNo
			//1ero, obtener distancia desde "pos" hasta posicion vacia a la izq
			distanciaIzq = obtenerDistanciaIzq(vector, longVector, pos)
			
			//2do, obtener distancia desde "pos" hasta posicion vacia a la der
			distanciaDer = obtenerDistanciaDer(vector, longVector, pos)
			
			//3ero, hacer desplazamiento segun posicion mas cercana
			Si distanciaDer <= distanciaIzq Entonces
				//Desplazar a la derecha
				Escribir "Desplazamiento a la derecha..."
				desplazarDer(vector, longVector, pos)
			SiNo
				//Desplazar a la izquierda
				Escribir "Desplazamiento a la izquierda..."
				desplarzarIzq(vector, longVector, pos)
			FinSi
				
			//Ingresar caracter en pos
			vector[pos] = char
			
			//Mostrar vector
			mostrarVector(vector, longVector)
			
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
	
	Escribir ""
	Escribir "| 0 1 2 3 4 5 6 7 8 9 ¯ ¯ ¯ ¯ ¯ ¯ ¯ ¯ ¯ ¯ |"
	Escribir "| " Sin Saltar

	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		Escribir vector[i], " " Sin Saltar
	FinPara
	
	Escribir "|"
	Escribir "| _ _ _ _ _ _ _ _ _ _ 0 1 2 3 4 5 6 7 8 9 |"
	Escribir ""
	
FinSubProceso

Funcion distanciaIzq <- obtenerDistanciaIzq (vector, longVector, pos)
	Definir i, distanciaIzq, contador Como Entero
	
	//Variables
	distanciaIzq = longVector
	i = pos - 1
	contador = 1
	
	Hacer
		Si vector[i] == " " Entonces
			distanciaIzq = contador
		FinSi
		i = i - 1
		contador = contador + 1
	Mientras Que i > 0 Y distanciaIzq == longVector
	
FinFuncion

Funcion distanciaDer <- obtenerDistanciaDer (vector, longVector, pos)
	Definir i, distanciaDer, contador Como Entero
	
	//Variables
	distanciaDer = longVector
	i = pos + 1
	contador = 1
	
	Hacer
		Si vector[i] == " " Entonces
			distanciaDer = contador
		FinSi
		i = i + 1
		contador = contador + 1
	Mientras Que i < longVector Y distanciaDer == longVector
	
FinFuncion

SubProceso desplazarDer (vector, longVector, pos)
	Definir i Como Entero
	
	Para i = longVector - 1 Hasta pos Con Paso -1 Hacer
		vector[i] = vector[i-1]
	FinPara
	
	vector[pos] = " "
	
FinSubProceso

SubProceso desplarzarIzq (vector, longVector, pos)
	Definir i Como Entero
	
	Para i = 0 Hasta pos Con Paso 1 Hacer
		vector[i] = vector[i+1]
	FinPara
	
	vector[pos] = " "
	
FinSubProceso