Algoritmo jornal_diario
	Definir nombre, dia, turno, esFestivo Como Caracter
	Definir horas, jornalDiario Como Real
	
	//Solicitar datos del empleado
	Escribir "Ingresa el nombre del empleado:"
	Leer nombre
	
	Escribir "Qué día trabajo?"
	Leer dia
	
	Hacer
		Escribir "En que turno trabajo?"
		Leer turno
	Mientras Que (Minusculas(turno) <> "diurno") Y (Minusculas(turno) <> "nocturno")
	
	Hacer
		Escribir "Cuantas horas trabajo?"
		Leer horas
	Mientras Que horas < 0
	
	Hacer
		Escribir "Era día festivo?"
		Leer esFestivo
	Mientras Que (Minusculas(esFestivo) <> "si") Y (Minusculas(esFestivo) <> "no")
	
	//Calcular jornal diario
	jornalDiario = calcularJornalDiario(dia, turno, horas, esFestivo)
	
	//Mostrar la info del empleado
	Escribir "El jornal diario para el empleado ", nombre, " del dia ", dia, " es: $", jornalDiario

FinAlgoritmo

Funcion jornal <- calcularJornalDiario (dia, turno, horas, esFestivo)
	Definir jornal Como Real
	
	jornal = 0
	
	//Calcular jornal segun turno
	Si Minusculas(turno) == "diurno" Entonces
		jornal = horas * 90
	SiNo
		jornal = horas * 125
	FinSi
	
	//Sumar porcentaje si es festivo
	jornal = jornal + calcularDiaFestivo(jornal, dia, esFestivo, turno)
	
FinFuncion

Funcion retorno <- calcularDiaFestivo (jornal, dia, esFestivo, turno)
	Definir retorno Como Real
	
	retorno = 0
	
	//Si es feriado o fin de semana, calcular porcentaje por dia feriado segun turno
	Si (Minusculas(esFestivo) == "si") O (Minusculas(dia) == "sabado") O (Minusculas(dia) == "domingo") Entonces
		
		Si Minusculas(turno) == "diurno" Entonces
			retorno = jornal * 0.1
		SiNo
			retorno = jornal * 0.15
		FinSi

	FinSi
	
FinFuncion
