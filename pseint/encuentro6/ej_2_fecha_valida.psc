Algoritmo fecha_valida
	Definir day, month, year Como Entero
	Definir monthName Como Caracter
	
	//Solicito la fecha
	Escribir "Ingresa una fecha (DD, MM, YYYY):"
	Leer day, month, year
	
	Si (day > 31 O day < 1) Entonces
		//Dia invalido
		Escribir "El dia ingresado no es valido"
	SiNo
		Si (month > 12 O month < 1) Entonces
			//mes invalido
			Escribir "El mes ingresado no es valido"
		SiNo
			//Asigno nombre al mes
			Segun month Hacer
				1:
					monthName = "Enero"
				2:
					monthName = "Febrero"
				3:
					monthName = "Marzo"
				4:
					monthName = "Abril"
				5:
					monthName = "Mayo"
				6:
					monthName = "Junio"
				7:
					monthName = "Julio"
				8:
					monthName = "Agosto"
				9:
					monthName = "Septiembre"
				10:
					monthName = "Octubre"
				11:
					monthName = "Noviembre"
				12:
					monthName = "Diciembre"
			FinSegun
			
			//Comprobar cant dias x mes
			Segun month Hacer
				//mes de 28 dias (no hace diferencia en años bisiestos)
				2:
					Si (day <= 28) Entonces
						Escribir day, " de ", monthName, " de ", year
					SiNo
						Escribir "La fecha ingresada no es valida: ", monthName, " solo tiene 28 dias."
					FinSi
				
				//meses de 30 dias
				4,6,9,11:
					Si (day < 31) Entonces
						Escribir day, " de ", monthName, " de ", year
					SiNo
						Escribir "La fecha ingresada no es valida: ", monthName, " solo tiene 30 dias."
					FinSi
					
				//meses de 31 dias
				1,3,5,7,8,10,12:
					Escribir day, " de ", monthName, " de ", year
			FinSegun
			
		FinSi
	FinSi
FinAlgoritmo
