Algoritmo sin_titulo
	Definir estadoPC, esAdmin Como Logico
	Definir ingresosMensuales, informeMarketing, ingresosNuevos Como Caracter
	Definir emails Como Entero
	Definir correoVoz, solicitudEmergencia Como Logico
	Definir plantaRegada Como Logico
	
	//Defino variables
	estadoPC = Falso
	esAdmin = Falso
	ingresosMensuales = "10, 20, 30, 40, 50, 60, 70, 80, 90, 100"
	informeMarketing = "110, 120"
	emails = 9
	correoVoz = Verdadero
	solicitudEmergencia = Verdadero
	plantaRegada = Falso
	
	//Encender PC
	Escribir "Encender PC?"
	Leer estadoPC
	
	Si estadoPC Entonces
		
		//Es admin? ingresar 0 (no es admin) o 1 (es admin)
		Escribir "Eres admin?"
		Leer esAdmin
		
		Si esAdmin Entonces
			
			//Completar hoja de calculo de ingresos mensuales
			Escribir "Tarea: completar hoja de calculo de ingresos mensuales."
			Escribir "Informe de marketing: ", informeMarketing
			
			Escribir "Ingresar datos: "
			Leer ingresosNuevos
			
			ingresosMensuales = Concatenar(ingresosMensuales, ", ")
			ingresosMensuales = Concatenar(ingresosMensuales, ingresosNuevos)
			
			Escribir "Ingresos mensuales actualizados!"
			Escribir ingresosMensuales
			
			//Revisar emails
			Escribir ""
			Escribir "Revisando emails..."
			
			Si emails < 10 Entonces
				Escribir "Revisando correo de voz..."
				
				Si correoVoz Entonces
					Escribir "Comprobar si hay solicitud de emergencia..."
					
					Si solicitudEmergencia Entonces
						Escribir "Realizando solicitud de emergencia... Hecho!"
					SiNo
						Escribir "No hay solicitud de emergencia"
					FinSi
				SiNo
					Escribir "No hay correo de voz"
				FinSi
				
			SiNo
				Escribir "Hecho!"
			FinSi
			
			Escribir "Enviando email de actualizacion... Hecho!"
			
		FinSi
		
		//Apagar PC
		Escribir "Apagar PC?... 0 (apaga la pc), 1 (deja encendida)"
		Leer estadoPC
		
		Si no estadoPC Entonces
			Escribir "PC apagada!"
		FinSi
	FinSi
	
	//Regar planta
	Escribir "Regar planta?..."
	Leer plantaRegada
	
	si plantaRegada Entonces
		Escribir "Planta regada!"
	FinSi
	
FinAlgoritmo
