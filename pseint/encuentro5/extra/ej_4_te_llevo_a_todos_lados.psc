Algoritmo te_llevo_a_todos_lados
	Definir hours, total Como Real
	
	Escribir "Ingresa cantidad de horas de uso:"
	Leer hours
	
	Si hours <= 2 Entonces
		total = 400
	SiNo
		Definir gasoline Como Real
		
		//Solicito cantidad de combustible gastado
		Escribir "Indica la cantidad de litros de combustible gastados:"
		Leer gasoline
		
		//$40 por litro de combustible
		total = gasoline * 40
		
		//Horas de uso, en minutos. $5.20 por minuto de uso
		total = total + (hours * 60 * 5.2)
	FinSi
	
	//Envio el total
	Escribir "El importe total es: ", total
	
FinAlgoritmo
