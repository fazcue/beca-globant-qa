Algoritmo meses
	Definir monthNum Como Entero
	Definir month, errorMessage Como Caracter
	Definir error Como Logico
	
	//variables
	error = Falso
	errorMessage = "Número de mes ingresado inválido."
	
	//Solicito número del mes
	Escribir "Ingresa el mes actual (1: Enero... 12: Diciembre):"
	Leer monthNum
	
	//Asignar nombre del mes segun numero de mes. De lo contrario, setear error como verdadero
	Segun monthNum Hacer
		1:
			month = "Enero"
		2:
			month = "Febrero"
		3:
			month = "Marzo"
		4:
			month = "Abril"
		5:
			month = "Mayo"
		6:
			month = "Junio"
		7:
			month = "Julio"
		8:
			month = "Agosto"
		9:
			month = "Septiembre"
		10:
			month = "Octubre"
		11:
			month = "Noviembre"
		12:
			month = "Diciembre"
		De Otro Modo:
			error = Verdadero
	Fin Segun
	
	//Si no hay error, mostrar nombre del mes, de lo contrario mostrar mensaje de error
	Si No error Entonces
		Escribir month
	SiNo
		Escribir errorMessage
	FinSi

	
FinAlgoritmo
