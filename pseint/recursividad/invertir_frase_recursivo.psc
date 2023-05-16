Algoritmo invertir_frase_recursivo
	Definir frase, fraseInvertida Como Caracter
	
	Escribir "Frase:"
	Leer frase
	
	fraseInvertida = invertir(frase)
	
	Escribir fraseInvertida
FinAlgoritmo

Funcion fraseInvertida <- invertir (frase)
	Definir fraseInvertida, char, resto Como Caracter
	Definir longFrase Como Entero
	
	//longitud frase - 1
	longFrase = Longitud(frase) - 1
	
	//Condicional para finalizar recursion
	Si longFrase == 0 Entonces
		fraseInvertida = frase
	SiNo
		//char posN -1
		char = Subcadena(frase, longFrase, longFrase)
		
		//Resto de la frase
		resto = Subcadena(frase, 0, longFrase - 1)
		
		fraseInvertida = Concatenar(char, invertir(resto))
	FinSi

FinFuncion
