Algoritmo suma_positivos
	Definir num, sum Como Entero //positivo
	Definir continue Como Caracter
	
	//Variables
	sum = 0
	
	//Bucle hacer mientras continue <> "n"
	Hacer
		//Solicito un numero
		Escribir "Ingresa un numero:"
		Leer num
		
		//Si es positivo, lo sumo
		//Sino, mostrar mensaje de numero descartado
		Si num > 0 Entonces
			sum = sum + num
		SiNo
			Escribir "El numero ingresado no es un entero positivo. Descartado!"
		FinSi
		
		//Preguntar si desea introducir otro numero
		Escribir "Desea introducir otro numero? S/N:"
		Leer continue

	Mientras Que Minusculas(continue) <> "n"
	
	//Si la suma es mayor a 0, mostrar resultado
	//Sino, mostrar mensaje de no se ingresaron numeros validos
	Si sum > 0 Entonces
		Escribir "La suma de los numeros enteros positivos ingresados es: ", sum
	SiNo
		Escribir "No ingresaste ningun numero entero positivo."
	FinSi

FinAlgoritmo
