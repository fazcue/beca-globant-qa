//Escriba un programa para obtener el grado de eficiencia de un operario de una fábrica de
//tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un período
//de prueba:
//x Producir menos de 200 tornillos defectuosos.
//x Producir más de 10000 tornillos sin defectos.
//x El grado de eficiencia se determina de la siguiente manera:
//x Si no cumple ninguna de las condiciones, grado 5.
//x Si sólo cumple la primera condición, grado 6.
//x Si sólo cumple la segunda condición, grado 7.
//x Si cumple las dos condiciones, grado 8
//Nota: para trabajar este ejercicio de manera prolija, ir probando cada inciso
//que pide el ejercicio. No hacer todos al mismo tiempo y después probar.

Algoritmo eficiencia_operador
	Definir tornillosDefectuosos, tornillosSinDefectos, grado Como Entero
	
	Escribir "Ingresa cantidad de tornillos defectuosos:"
	Leer tornillosDefectuosos
	
	Escribir "Ingresa cantidad de tornillos sin defectos:"
	Leer tornillosSinDefectos
	
	Si tornillosDefectuosos >= 200 Y tornillosSinDefectos <= 10000 Entonces
		//Cuando no se cumple ninguna
		grado = 5
	SiNo
		Si tornillosDefectuosos < 200 Y tornillosSinDefectos > 10000 Entonces
			//cuando se cumplen ambas
			grado = 8
		SiNo
			Si tornillosDefectuosos < 200 Entonces
				//Cuando se cumple solo la 1era
				grado = 6
			SiNo
				//Cuando se cumple solo la 2da
				grado = 7
			FinSi
		FinSi
	FinSi
	
	Escribir "El grado de eficiencia es: ", grado
FinAlgoritmo
