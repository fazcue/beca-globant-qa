Algoritmo ej_4_Arreglos
	Definir longitudVector Como Entero
	Definir vectorA, vectorB, vectorC Como Entero
	
	Escribir "Ingresa la longitud del vector"
	Leer longitudVector
	
	Dimension vectorA[longitudVector]
	Dimension vectorB[longitudVector]
	Dimension vectorC[longitudVector]
	
	Menu(longitudVector, vectorA, vectorB, vectorC)
	
FinAlgoritmo

SubProceso Menu(longitudVector, vectorA, vectorB, vectorC)
	Definir opcionMenu Como Caracter
	Definir elegir Como Logico
	Definir countA, countB, countC Como Entero
	
	elegir = Verdadero
	countA = 0
	countB = 0
	countC = 0
	
	Repetir
		Escribir "Ingresa una opción del menú"
		Escribir "A: Llenar Vector A."
		Escribir "B: Llenar Vector B."
		Escribir "C: Llenar Vector C con la suma de los vectores A y B."
		Escribir "D: Llenar Vector C con la resta de los vectores B y A."
		Escribir "E: Mostrar: Vector A, B o C."
		Escribir "F: Salir."
		
		Leer opcionMenu
		
		Segun opcionMenu Hacer
			"A":
				VectorAB(vectorA, longitudVector)
				countA = countA + 1
			"B":
				VectorAB(vectorB, longitudVector)
				countB = countB + 1
			"C":
				Si countA > 0 Y countB > 0 Entonces
					VectorSuma(vectorA, vectorB, vectorC, longitudVector)
					countC = countC + 1
				SiNo
					Escribir "Al menos un vector (A o B) no ha sido creado aún."
				FinSi
			"D":
				Si countA > 0 Y countB > 0 Entonces
					VectorResta(vectorA, vectorB, vectorC, longitudVector)
					countC = countC + 1
				SiNo
					Escribir "Al menos un vector (A o B) no ha sido creado aún."
				FinSi
			"E":
				Si countA > 0 Y countB > 0 Y countC > 0 Entonces
					MostrarVectores(vectorA, vectorB, vectorC, longitudVector)
				SiNo
					Escribir "Al menos un vector (A o B o C) no ha sido creado aún."
				FinSi
			"F":
				Salir(elegir)
			De Otro Modo:
				Escribir "No es una opción válida"
		Fin Segun
	Mientras Que elegir 
	
FinSubProceso

SubProceso VectorAB(vector, longitudVector)
	Definir i Como Entero
	
	Para i <- 0 Hasta longitudVector -1 Hacer
		vector[i] = Aleatorio(-100, 100)
	Fin Para
	
FinSubProceso

SubProceso VectorSuma(vectorA, vectorB, vectorC, longitudVector)
	Definir i Como Entero
	
	Para i <- 0 Hasta longitudVector -1 Hacer
		vectorC[i] = vectorA[i] + vectorB[i]
	Fin Para
	
FinSubProceso

SubProceso VectorResta(vectorA, vectorB, vectorC, longitudVector)
	Definir i Como Entero
	
	Para i <- 0 Hasta longitudVector -1 Hacer
		vectorC[i] = vectorB[i] - vectorA[i]
	Fin Para
	
FinSubProceso

SubProceso MostrarVectores(vectorA, vectorB, vectorC, longitudVector)
	Definir opcionVector Como Caracter
	Definir opcionVectorMenu Como Logico
	Definir salida Como Caracter
	
	opcionVectorMenu = Verdadero
	
	Repetir
		Escribir "¿Qué vector quieres ver? (A, B, C)"
		Leer opcionVector
		
		Segun opcionVector Hacer
			"A":
				MostrarVector(vectorA, longitudVector)
			"B":
				MostrarVector(vectorB, longitudVector)
			"C":
				MostrarVector(vectorC, longitudVector)
			De Otro Modo:
				Escribir "Escribe una opción correcta"
		Fin Segun
		
		Escribir "¿Quieres volver al menú principal?"
		Leer salida
		
		Si salida == "si" Entonces
			opcionVectorMenu = Falso
		Fin Si
		
	Mientras Que opcionVectorMenu
	
FinSubProceso

SubProceso MostrarVector(vector, longitudVector)
	Definir i Como Entero
	
	Para i <- 0 Hasta longitudVector -1 Hacer
		Escribir Sin Saltar vector[i] " "
	Fin Para
	
	Escribir ""
	
FinSubProceso

SubProceso Salir(elegir Por Referencia)
	elegir = Falso
	Escribir "Hasta pronto"
FinSubProceso