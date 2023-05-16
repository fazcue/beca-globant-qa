Algoritmo auditoria
	Definir esAdmin Como Logico
	Definir ingresosMensuales, ingresosFaltantes, informesMarketing como Caracter
	Definir emails, correosVoz Como Entero
	Definir emergencia Como Logico
	Definir apagarPC como Logico
	
	Escribir "Eres admin?"
	Leer esAdmin
	
	Si esAdmin Entonces
		emails = 9
		correosVoz = 2
		emergencia = 4 > 5
		
		//tarea 1
		ingresosMensuales = "10, 20, 30, 40, 50, 60, 70, 80, 90, 100"
		informesMarketing = "110, 120"
		
		Escribir "1er tarea: completar hoja de calculo de ingresos mensuales"
		Escribir "Aqui tienes el informe de marketing para dicha tarea: ", informesMarketing
		
		Escribir ""
		Escribir "Ingresa los ingresos faltantes:"
		Leer ingresosFaltantes
		
		//Concactenar ingresosFaltantes a ingresosMensuales
		ingresosMensuales = Concatenar(ingresosMensuales, ", ")
		ingresosMensuales = Concatenar(ingresosMensuales, ingresosFaltantes)
		
		Escribir "Tarea 1 finalizada!"
		Escribir ingresosMensuales
		
		//tarea 2
		si emails < 10 Y correosVoz > 0 Entonces
			si emergencia Entonces
				Escribir "Realizamos la solicitud de emergencia"
			FinSi
		SiNo
			Escribir ""
		FinSi
	SiNo
		Escribir "No tienes permisos"
	FinSi
	
	//Tarea 3
	Escribir "Apagar PC?"
	Leer apagarPC
	
	Si apagarPC Entonces
		Escribir "Regaste la planta"
	FinSi
FinAlgoritmo
