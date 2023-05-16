Algoritmo temperatura_media_n_dias
	Definir cantDias Como Entero
	
	//Solicitar cantidad de dias
	Escribir "Ingresa cantidad de dias:"
	Leer cantDias
	
	//Calcular e ir mostrando temp media de cada dia
	tempMedia(cantDias)
	
FinAlgoritmo

SubProceso tempMedia (cantDias)
	Definir min, max, media Como Real
	Definir i Como Entero
	
	//Para cada dia
	Para i = 1 Hasta cantDias Con Paso 1 Hacer
		
		//Solicitar datos del dia
		Escribir "Dia #", i
		Escribir "------------"
		
		Escribir "Indica la temperatura maxima:" Sin Saltar
		Leer max
		
		Escribir "Indica la temperatura minima:" Sin Saltar
		Leer min
		
		//Calcular media
		media = (max + min) / 2
		
		//Imprimir media
		Escribir "La temperatura media es: ", media
		Escribir "------------"
		Escribir ""
	
	FinPara
FinSubProceso
