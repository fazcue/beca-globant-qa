Algoritmo sin_titulo
	Definir dia, mes, hora Como Entero
	Definir ingresarDato Como Caracter
	
	//Crear array de 3 dimensiones
	Dimension calendar(12,31,24)
	Definir calendar Como Caracter
	
	//Recorrerlo y asignar caracter vacio para cada elemento
	rellenar_o_imprimir(calendar, "rellenar")
	
	//Ingresar dato
	ingresarDato = "si"
	
	Mientras Minusculas(ingresarDato) == "si"  Hacer
		Escribir "Indica la fecha..."
		
		Escribir "Dia: " Sin Saltar
		Leer dia
		
		Escribir "Mes: " Sin Saltar
		Leer mes
		
		Escribir "Hora: " Sin Saltar
		Leer hora
		
		//guardo tarea en fecha indicada
		Escribir "Tarea: " Sin Saltar
		Leer calendar(mes - 1,dia - 1,hora - 1)
		
		Escribir ""
		Escribir "Desea ingresar otra tarea (Si/No)? " Sin Saltar
		Leer ingresarDato
		
		Escribir ""
	FinMientras
	
	//Imprimir tareas:
	rellenar_o_imprimir(calendar, "imprimir")
	
FinAlgoritmo

SubProceso rellenar_o_imprimir (calendar, accion)
	Definir i, j, k Como Entero
	
	Para i = 0 Hasta 11 Con Paso 1 Hacer
		Para j = 0 Hasta 30 Con Paso 1 Hacer
			Para k = 0 Hasta 23 Con Paso 1 Hacer
				
				Si accion == "imprimir" Entonces
					Si calendar(i,j,k) <> "" Entonces
						Escribir "Tarea ", j + 1, "/", i + 1, ", a las ", k + 1, "hs: ", calendar(i,j,k)
					FinSi
				SiNo
					calendar(i,j,k) = ""
				FinSi
				
			FinPara
		FinPara
	FinPara
	
FinSubProceso
	