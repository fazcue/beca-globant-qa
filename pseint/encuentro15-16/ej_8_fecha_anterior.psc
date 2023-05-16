Algoritmo fecha_anterior
	Definir day, month, year Como Entero
	
	//Solicitar fecha
	Escribir "Ingresa una fecha:"
	
	Escribir "Dia:" Sin Saltar
	Leer day
	
	Escribir "Mes:" Sin Saltar
	Leer month
	
	Escribir "Año:" Sin Saltar
	Leer year
	
	//Obtener fecha anterior
	fechaAnterior(day, month, year)
FinAlgoritmo

SubProceso fechaAnterior (day, month, year)
	Definir prevDay, prevMonth, prevYear Como Entero
	
	//Si dia es igual a 1, entonces debe cambiar ademas mes y posiblemente año
	//Sino cambiar solo dia -> -1
	Si day == 1 Entonces
		
		//Cambiar mes: 1 -> 12; resto -> -1
		Si month == 1 Entonces
			prevMonth = 12
		SiNo
			prevMonth = month - 1
		FinSi
		
		//Cambiar dia segun mes (no se tiene en cuenta años bisiestos)
		Segun prevMonth Hacer
			1,3,5,7,8,10,12:
				prevDay = 31
			2:
				prevDay = 28
			4,6,9,11:
				prevDay = 30
		FinSegun
		
		//Cambiar año si mes es igual a 1
		Si month == 1 Entonces
			prevYear = year - 1
		SiNo
			prevYear = year
		FinSi
		
	SiNo
		prevDay = day - 1
		prevMonth = month
		prevYear = year
	FinSi
	
	//Mostrar resultado
	Escribir ""
	Escribir "Fecha anterior: " prevDay, "/", prevMonth, "/", prevYear
	
FinSubProceso
	