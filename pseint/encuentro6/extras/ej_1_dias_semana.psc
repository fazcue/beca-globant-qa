Algoritmo dias_semana
	Definir num Como Entero
	
	Escribir "Ingresa un numero entre 1 y 7 inclusive:"
	Leer num
	
	Si num < 1 O num > 7 Entonces
		Escribir "El numero que ingresaste no es valido"
	SiNo
		Segun num Hacer
			1:
				Escribir "Hoy es Lunes"
			2:
				Escribir "Hoy es Martes"
			3:
				Escribir "Hoy es Miercoles"
			4:
				Escribir "Hoy es Jueves"
			5:
				Escribir "Hoy es Viernes"
			6:
				Escribir "Hoy es Sabado"
			7:
				Escribir "Hoy es Domingo"
		FinSegun
	FinSi
FinAlgoritmo
