Algoritmo sueldos_vendedores
	Definir i, j, totalSellers Como Entero
	
	//Defino variables para cada vendedor
	Definir baseSalary, salePrice, commission, finalSalary Como Real
	Definir totalSales Como Entero
	
	//Solicito total de vendedores
	Hacer
		Escribir "Ingresa cantidad de vendedores:"
		Leer totalSellers
	Mientras Que totalSellers < 1
	
	//Bucle para cada vendedor, hacer
	Para i = 1 Hasta totalSellers Con Paso 1 Hacer
		
		//Variables
		totalSales = 0
		salePrice = 0
		
		Escribir ""
		
		//INICIO Solicito datos
		Hacer
			Escribir "Empleado #", i, ": Cual es su sueldo base:"
			Leer baseSalary
		Mientras Que baseSalary < 1
		
		Hacer
			Escribir  "Empleado #", i, ": Cuantas ventas realizo:"
			Leer totalSales
		Mientras Que totalSales < 0
		
		//Si no tiene ventas, entonces no preguntar precio de venta
		Si totalSales <> 0 Entonces
			
			commission = 0
			//Preguntar precio por CADA venta
			Para j = 1 hasta totalSales Con Paso 1 Hacer
				
				Hacer
					Escribir  "Empleado #", i, ": Cuanto cobro por la venta #", j, ":"
					Leer salePrice
				Mientras Que salePrice < 1
				
				//Calcular comision
				commission = commission + (salePrice * 0.1)
				
			FinPara
			
		FinSi
		//FIN Solicito datos
		
		Escribir "------------"
		
		//Imprimir total comisiones a pagar
		Escribir "Empleado #", i, ": se le debera pagar $", commission, " en comisiones."
		
		//Calcular salario final (baseSalary + commission)
		finalSalary = baseSalary + commission
		Escribir "Empleado #", i, ": se le debera pagar $", finalSalary, " en total."
		
		Escribir "------------"
	FinPara
	
FinAlgoritmo
