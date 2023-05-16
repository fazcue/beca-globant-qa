Algoritmo ej_7_matriz_cuadrada_informe_ventas
	Definir matriz, longMatriz Como Entero
	
	//Crear matriz cuadrada
	longMatriz = 5
	Dimension matriz[longMatriz, longMatriz]
	
	//Rellenar matriz con ventas
	ingresarVentas(matriz, longMatriz)
	
	//Mostrar informe
	Escribir ""
	mostrarInforme(matriz, longMatriz)
	Escribir ""
	
FinAlgoritmo

SubProceso ingresarVentas (matriz, longMatriz)
	Definir i, j Como Entero
	Definir dia Como Caracter
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			Segun j Hacer
				0:
					dia = "Lunes"
				1:
					dia = "Martes"
				2:
					dia = "Miercoles"
				3:
					dia = "Jueves"
				4:
					dia = "Viernes"
			FinSegun
			
			Hacer
				Escribir "Producto #", i + 1, ": Indica la cantidad de ventas del día ", dia, ":" Sin Saltar
				leer matriz[i,j]
				
				Si matriz[i,j] < 0 Entonces
					Escribir "No puedes asignar un valor negativo."
					Escribir ""
				FinSi
			Mientras Que matriz[i,j] < 0
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

SubProceso mostrarInforme (matriz, longMatriz)
	Definir i, j, totalProducto, totalSemana, cantidadProductoMasVendido, productoMasVendido Como Entero
	Definir dia Como Caracter
	
	//Variables
	cantidadProductoMasVendido = 0
	productoMasVendido = 0
	
	//Parte superior (dias)
	Escribir " ____________________________________________________________ "
	Escribir "|             | " Sin Saltar
	
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		Segun i Hacer
			0:
				dia = "Lun"
			1:
				dia = "Mar"
			2:
				dia = "Mie"
			3:
				dia = "Jue"
			4:
				dia = "Vie"
		FinSegun
		
		Escribir dia, " | " Sin Saltar
		
	FinPara
	
	Escribir " Total semana  |"
	
	Escribir " ------------------------------------------------------------ "
	
	//Total de ventas por producto
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		totalProducto = 0
		
		Escribir "| Producto #", i+1, " | " Sin Saltar
		
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			totalProducto = totalProducto + matriz[i,j]
			Escribir " ", matriz[i,j], "  | " Sin Saltar
			
		FinPara
		
		Escribir "      ", totalProducto, "      " Sin Saltar
		Si totalProducto > 9 Entonces
			Escribir " |" Sin Saltar
		SiNo
			Escribir "  |" Sin Saltar
		FinSi
		
		Escribir ""
		
		//Producto mas vendido en la semana
		Si totalProducto > cantidadProductoMasVendido Entonces
			cantidadProductoMasVendido = totalProducto
			productoMasVendido = i
		FinSi
		
	FinPara
	
	Escribir "| Total / dia |" Sin Saltar
	
	//Total de ventas por dia
	Para i = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
		
		totalSemana = 0
		Para j = 0 Hasta longMatriz - 1 Con Paso 1 Hacer
			
			totalSemana = totalSemana + matriz[j,i]
			
		FinPara
		
		Escribir "  ", totalSemana Sin Saltar
		Si totalSemana > 9 Entonces
			Escribir " |" Sin Saltar
		SiNo
			Escribir "  |" Sin Saltar
		FinSi
		
	FinPara
	
	Escribir "                |" Sin Saltar
	
	//Producto mas vendido
	Escribir ""
	Escribir " ------------------------------------------------------------ "
	Escribir "| Producto mas vendido: #", productoMasVendido + 1, " con ", cantidadProductoMasVendido, " unidades vendidas" Sin Saltar
	Si cantidadProductoMasVendido > 9 Entonces
		Escribir "          |"
	SiNo
		Escribir "           |"
	FinSi
	Escribir " ------------------------------------------------------------ "
	
FinSubProceso
