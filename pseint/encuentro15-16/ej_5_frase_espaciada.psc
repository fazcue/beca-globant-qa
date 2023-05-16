Algoritmo frase_espaciada
	Definir frase Como Caracter
	
	//Solicitar frase
	Escribir "Ingresa una frase:"
	Leer frase
	
	//Convertir
	convertirEspaciado(frase)
	
FinAlgoritmo

SubProceso convertirEspaciado (frase)
	Definir i, LONG_FRASE Como Entero
	Definir fraseEspaciada, char Como Caracter
	
	//Constantes
	LONG_FRASE = Longitud(frase) - 1
	
	//Variables
	fraseEspaciada = ""
	
	//Para cada caracter en frase
	Para i = 0 Hasta LONG_FRASE Con Paso 1 Hacer
		
		//Obtener caracter en pos i
		char = Subcadena(frase, i, i)
		
		//Eliminar caracter si es espacio
		//Sino, Concatenar espacio
		Si char == " " Entonces
			char = ""
		SiNo
			char = Concatenar(char, " ")
		FinSi
		
		//Concatenar caracter a frase
		fraseEspaciada = Concatenar(fraseEspaciada, char)
		
	FinPara
	
	//Mostar resultado
	Escribir ""
	Escribir fraseEspaciada
	
FinSubProceso
