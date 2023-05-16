Algoritmo ej_4_vector_notas_estudiantes
	Definir vector, longVector Como Entero
	
	//Crear vector
	longVector = 100
	Dimension vector[longVector]
	
	//Generar notas aleatoriamente
	generarNotasAleatoriamente(vector, longVector)
	
	//Mostrar informe
	infoNotas(vector, longVector)
	
FinAlgoritmo

SubProceso generarNotasAleatoriamente (vector, longVector)
	Definir i Como Entero
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hace
		vector[i] = Aleatorio(0, 20)
	FinPara
	
FinSubProceso

SubProceso infoNotas (vector, longVector)
	Definir i, deficientes, regulares, buenos, excelentes Como Entero
	
	deficientes = 0
	regulares = 0
	buenos = 0
	excelentes = 0
	
	Para i = 0 Hasta longVector - 1 Con Paso 1 Hacer
		
		Si vector[i] < 6 Entonces
			deficientes = deficientes + 1
		SiNo
			Si vector[i] < 11 Entonces
				regulares = regulares + 1
			SiNo
				Si vector[i] < 16 Entonces
					buenos = buenos + 1
				SiNo
					excelentes = excelentes + 1
				FinSi
			FinSi
		FinSi

	FinPara
	
	Escribir "Deficientes: ", deficientes
	Escribir "Regulares: ", regulares
	Escribir "Buenos: ", buenos
	Escribir "Excelentes: ", excelentes
	
FinSubProceso
