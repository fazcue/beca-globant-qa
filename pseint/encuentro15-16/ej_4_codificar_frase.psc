Algoritmo codificar_frase
	Definir frase, fraseCodificada Como Caracter
	Definir longFrase Como Entero
	
	//Variables
	fraseCodificada = ""
	
	//Solicitar frase (debe terminar en un punto)
	Hacer
		Escribir "Ingresa una frase (debe terminar con un punto):"
		Leer frase
		
		longFrase = Longitud(frase) - 1
	Mientras Que Subcadena(frase, longFrase, longFrase) <> "."
	
	//Codificar frase
	codificarFrase(frase, longFrase, fraseCodificada)
	
	//Imprimir frase codificada
	Escribir fraseCodificada
	
FinAlgoritmo

SubProceso codificarFrase (frase, longFrase, fraseCodificada Por Referencia)
	Definir i Como Entero
	Definir char Como Caracter
	
	//Para cada caracter en frase
	Para i = 0 Hasta longFrase Con Paso 1 Hacer
		
		//Obtener caracter en indice i
		char = Subcadena(frase, i, i)
		
		//Si es vocal, reemplazar
		Segun Minusculas(char) Hacer
			"a":
				char = "@"
			"e":
				char = "#"
			"i":
				char = "$"
			"o":
				char = "%"
			"u":
				char = "*"
		FinSegun
		
		//Concatenar char a fraseCodificada
		fraseCodificada = Concatenar(fraseCodificada, char)
		
	FinPara
	
FinSubProceso
