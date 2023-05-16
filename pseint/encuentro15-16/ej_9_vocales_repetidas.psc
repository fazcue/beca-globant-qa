Algoritmo vocales_repetidas
	Definir frase Como Caracter
	
	//Solicitar frase
	Escribir "Ingresa una frase:"
	Leer frase
	
	//Eliminar vocales repetidas y mostrar resultado
	eliminarVocalesRepetidas(frase)
	
FinAlgoritmo

SubProceso eliminarVocalesRepetidas (frase)
	Definir i, j, LONG_FRASE, longFraseModificada, contador Como Entero
	Definir char, fraseModificada Como Caracter
	
	//Constantes
	LONG_FRASE = Longitud(frase) - 1
	
	//Variables
	fraseModificada = ""
	
	//Para cada caracter en frase
	Para i = 0 Hasta LONG_FRASE Con Paso 1 Hacer
		
		//Obtener caracter
		char = Subcadena(frase, i, i)
		
		//Variables
		contador = 1
		longFraseModificada = Longitud(fraseModificada) - 1
		
		//Segun char sea vocal
		Segun Minusculas(char) Hacer
			"a","e","i","o","u":
				//Comparar con resto de caracteres ya concatenados
				Para j = 0 Hasta longFraseModificada Con Paso 1 Hacer
					
					//Si char se repite, aumentar contador
					Si Minusculas(char) == Minusculas(Subcadena(fraseModificada, j, j)) Entonces
						contador = contador + 1
					FinSi
					
				FinPara
		FinSegun
		
		//Si no repite en toda la frase, concatenar char
		Si contador == 1 Entonces
			fraseModificada = Concatenar(fraseModificada, char)
		FinSi
		
	FinPara
	
	Escribir ""
	Escribir fraseModificada
	
FinSubProceso
	