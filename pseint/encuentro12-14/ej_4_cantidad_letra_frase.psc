//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
//	función Subcadena().

Algoritmo cantidad_letra_cadena
	Definir frase, letra Como Caracter
	Definir total Como Entero
	
	Escribir "Ingresa una frase:"
	Leer frase
	
	Escribir "Indica la letra a buscar:"
	Leer letra
	
	total = cantidadVecesLetra(frase, letra)
	
	Escribir "La letra ", letra, " aparece un total de ", total, " veces en la frase: ", frase
	
FinAlgoritmo

Funcion retorno <- cantidadVecesLetra (frase, letra)
	Definir i, retorno, longFrase Como Entero
	
	//Valor inicial de retorno
	retorno = 0
	
	longFrase = Longitud(frase) - 1
	
	Para i = 0 Hasta longFrase Con Paso 1 Hacer
		
		Si Subcadena(frase, i, i) == letra Entonces
			retorno = retorno + 1
		FinSi
		
	FinPara
	
FinFuncion
