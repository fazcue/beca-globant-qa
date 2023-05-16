Algoritmo Correccion_Mientras
	Definir num Como Entero
	
	//El programa ingresara numeros mientras sean PARES
	Escribir "Ingrese un numero:"
	Leer num
	
	//Bucle mientras num sea par
	Mientras num MOD 2 == 0 Hacer
		Escribir "Ingrese otro numero"
		Leer num
	FinMientras
FinAlgoritmo
