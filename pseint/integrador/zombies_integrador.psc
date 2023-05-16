Algoritmo zombies_integrador
	//comprobar que secuencia sea valida: longitud y bases
	//Crear matriz cuadrada, obteniendo longitud matriz de la longitud de la secuencia, usando raiz cuadrada
	//Rellenar matriz con secuencia
	//Buscar gen en diagonales (bases iguales)
	//Mostrar si tiene gen o no
	
	Definir secuencia, matriz Como Caracter
	Definir longSecuencia, longMatriz Como Entero
	Definir esValida, contieneGenZ Como Logico
	
	//Secuencia a analizar
	secuencia = "BCBBABBACBBBBCBB"
	
	//Calcular longitud secuencia
	longSecuencia = Longitud(secuencia)
	
	//Comprobar que secuencia sea valida
	esValida = verificarSecuencia(secuencia, longSecuencia)
	
	Si esValida Entonces
		
		//Calcular longitud matriz
		longMatriz = raiz(longSecuencia)
		
		//Crear matriz con secuencia
		Dimension matriz[longMatriz, longMatriz]
		rellenarMatriz(matriz, longMatriz, secuencia)
		
		//Comprobar si contiene el genZ
		contieneGenZ = verificarGenZ(matriz, longMatriz)
		
		//Mostrar matriz
		mostrarMatriz(matriz, longMatriz)
		
		//Mostrar mensaje final
		Si contieneGenZ Entonces
			Escribir "La secuencia CONTIENE el genZ"
		SiNo
			Escribir "La secuencia NO contiene el genZ"
		FinSi
		
	SiNo
		Escribir "Secuencia no valida."
	FinSi
	
	
FinAlgoritmo

Funcion esValida <- verificarSecuencia(secuencia, longSecuencia)
	Definir esValida Como Logico
	Definir i Como Entero
	
	//Variables
	esValida = Verdadero
	i = 0
	
	//Verificar si longitud es igual a 9, 16 o 1369, y que sus bases sean A, B, C o D
	Si longSecuencia <> 9 Y longSecuencia <> 16 Y longSecuencia <> 1369 Entonces
		esValida = Falso
	FinSi
	
	Si esValida Entonces
		
		Hacer
			Segun Minusculas(Subcadena(secuencia, i, i)) Hacer
				"a", "b", "c", "d":
					i = i + 1
				De Otro Modo:
					esValida = Falso
			FinSegun
		Mientras Que esValida Y i < longSecuencia
		
	FinSi
FinFuncion

SubProceso rellenarMatriz(matriz, longMatriz, secuencia)
	Definir i, j, k Como Entero
	
	//Variables
	k = 0
	
	Para i = 0 Hasta longMatriz - 1 Hacer
		Para j = 0 Hasta longMatriz - 1 Hacer
			
			matriz[i,j] = Subcadena(secuencia, k, k)
			k = k + 1
			
		FinPara
	FinPara
FinSubProceso

Funcion contieneGen <- verificarGenZ(matriz, longMatriz)
	Definir contieneGen Como Logico
	Definir letraD1, letraD2 Como Caracter
	Definir i, j Como Entero
	
	//Variables
	contieneGen = Verdadero
	
	//Letras iniciales
	letraD1 = matriz[0,0]
	letraD2 = matriz[0,longMatriz - 1]
	
	Para i = 0 Hasta longMatriz - 1 Hacer
		
		Si contieneGen Entonces
			
			Para j = 0 Hasta longMatriz - 1 Hacer
				
				//Comprobar diagonal1
				Si i == j Y letraD1 <> matriz[i,j] Entonces
					contieneGen = Falso
				FinSi
				
				//Comprobar diagonal2
				Si (j == longMatriz - 1 - i) Y letraD2 <> matriz[i,j] Entonces
					contieneGen = Falso
				FinSi
				
			FinPara
			
		FinSi
	FinPara
	
FinFuncion

SubProceso mostrarMatriz(matriz, longMatriz)
	Definir i, j Como Entero
	
	Para i = 0 Hasta longMatriz - 1 Hacer
		Escribir "[ " Sin Saltar
		Para j = 0 Hasta longMatriz - 1 Hacer
			Escribir matriz[i,j], " " Sin Saltar
		FinPara
		Escribir "]"
	FinPara
	
FinSubProceso
