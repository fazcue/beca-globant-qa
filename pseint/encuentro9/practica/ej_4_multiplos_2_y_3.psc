Algoritmo multiplos_2_y_3
	Definir i, LIMITE, count Como Entero
	
	//Constantes
	LIMITE = 100
	
	//Variables
	count = 0
	
	Para i = 1 Hasta LIMITE Con Paso 1 Hacer
		
		//Si i es multiple de 2 o multiple de 3, incrementar contador
		Si (i MOD 2 == 0) O (i MOD 3 == 0) Entonces
			count = count + 1
		FinSi
		
	FinPara
	
	Escribir "El total de numeros multiplos de 2 o 3 comprendidos entre 1 y ", LIMITE, " es de: ", count
	
FinAlgoritmo
