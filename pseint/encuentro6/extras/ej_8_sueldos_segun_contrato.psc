Algoritmo sueldos_segun_contrato
	Definir type Como Caracter
	Definir totalSales, totalHours Como Entero
	Definir sellPrice, hourPrice, salary Como Real
	
	Escribir "Tipos de contrato:"
	Escribir "C: comision"
	Escribir "SF+C: salario fijo + comision"
	Escribir "SF: salario fijo"
	Escribir "Indica el tipo de contrato a continuacion:"
	Leer type
	
	Segun Minusculas(type) Hacer
		"c":
			Escribir "Ingresa precio por venta:"
			Leer sellPrice
			
			Escribir "Ingresa cantidad de ventas:"
			Leer totalSales
			
			salary = sellPrice * totalSales * 0.4
			
		"sf+c":
			Escribir "Ingresa precio por venta:"
			Leer sellPrice
			
			Escribir "Ingresa cantidad de ventas:"
			Leer totalSales
			
			Escribir "Ingresa paga por hora:"
			Leer hourPrice
			
			Escribir "Ingresa cantidad de horas trabajadas:"
			Leer totalHours
			
			Si totalHours > 40 Entonces
				salary = (40 * hourPrice) + (sellPrice * totalSales * 0.25)
			SiNo
				salary = (totalHours * hourPrice) + (sellPrice * totalSales * 0.25)
			FinSi
			
		"sf":
			Escribir "Ingresa paga por hora:"
			Leer hourPrice
			
			Escribir "Ingresa cantidad de horas trabajadas:"
			Leer totalHours
			
			Si totalHours > 40 Entonces
				salary = (40 * hourPrice) + ((totalHours - 40) * hourPrice * 0.5)
			SiNo
				salary = totalHours * hourPrice
			FinSi
	FinSegun
	
	Escribir "El salario es de: ", salary
	
FinAlgoritmo
