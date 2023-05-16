Algoritmo calculadora_materiales_construccion
	menu()
FinAlgoritmo

//Menu principal
SubProceso menu ()
	Definir selectedOption Como Caracter
	Definir status Como Logico
	
	//Variables
	status = Verdadero
	
	//Menu
	Hacer
		Escribir ""
		Escribir "CALCULADORA DE MATERIALES PARA CONSTRUIR"
		Escribir "-----------------------------------"
		Escribir "1. Calcular muro de ladrillo"
		Escribir "2. Calcular viga de hormigon"
		Escribir "3. Calcular columnas de hormigon"
		Escribir "4. Calcular contrapisos"
		Escribir "5. Calcular techo"
		Escribir "6. Calcular pisos"
		Escribir "7. Calcular pintura"
		Escribir "8. Calcular iluminacion"
		Escribir "9. Salir"
		Escribir "-----------------------------------"
		
		//Solicitar opcion
		Escribir "Indica la opción que deseas:" Sin Saltar
		Leer selectedOption
		
		//Segun opcion, hacer
		Segun selectedOption Hacer
			"1":
				calcularMuro()
			"2":
				calcularViga()
			"3":
				calcularColumna()
			"4":
				calcularContrapisos()
			"5":
				calcularTecho()
			"6":
				calcularPisos()
			"7":
				calcularPintura()
			"8":
				calcularIluminacion()
			"9":
				salir(status)
			De Otro Modo:
				Escribir "Opción ingresada no válida."
		FinSegun
		
		//Si el usuario sigue activo, preguntar si desea continuar
		Si status Entonces
			continuar(status)
		FinSi
		
	Mientras Que status
	
FinSubProceso

//Funciones
Funcion superficie <- calcularSuperficie (largo, alto)
	Definir superficie Como Real
	
	//Retornar superficie
	superficie = alto * largo
FinFuncion

Funcion volumen <- calcularVolumen (largo, alto, espesor) 
	Definir volumen Como Real
	
	//Retornar volumen
	volumen = alto * largo * espesor
FinFuncion

Funcion alto <- ingresarAlto()
	Definir alto Como Real
	
	Hacer
		Escribir "Indica el alto (en metros):" Sin Saltar
		Leer alto
		
		Si alto < 0 Entonces
			Escribir "Alto inválido. Indica nuevamente..."
		FinSi
	Mientras Que alto < 0
FinFuncion

Funcion largo <- ingresarLargo()
	Definir largo Como Real
	
	Hacer
		Escribir "Indica el largo (en metros):" Sin Saltar
		Leer largo
		
		Si largo < 0 Entonces
			Escribir "Largo inválido. Indica nuevamente..."
		FinSi
	Mientras Que largo < 0
FinFuncion

Funcion espesor <- ingresarEspesor()
	Definir espesor Como Real
	
	Hacer
		Escribir "Indica el espesor (20cm o 30cm):" Sin Saltar
		Leer espesor
		
		Si espesor <> 20 Y espesor <> 30 Entonces
			Escribir "Espesor inválido. Indica nuevamente..."
		FinSi
	Mientras Que espesor <> 20 Y espesor <> 30
FinFuncion

//SubProcesos
SubProceso calcularMuro()
	Definir espesor Como Entero
	Definir largo, alto, superficie Como Real
	Definir CEMENTO, ARENA, LADRILLOS Como Real
	
	//Solicitar espesor
	espesor = ingresarEspesor()
	
	//Solicitar largo
	largo = ingresarLargo()
	
	//Solicitar alto
	alto = ingresarAlto()
	
	//Calcular superficie
	superficie = calcularSuperficie(largo, alto)
	
	//Segun espesor, definir materiales
	Si espesor == 20 Entonces
		CEMENTO = 10.9
		ARENA = 0.09
		LADRILLOS = 90
	SiNo
		CEMENTO = 15.2
		ARENA = 0.115
		LADRILLOS = 120
	FinSi
	
	//Mostrar info
	Escribir ""
	Escribir "La superficie del muro es: ", superficie, " m²"
	Escribir ""
	Escribir "Materiales necesarios para el muro:"
	Escribir "------------------------------"
	Escribir "Cemento: ", CEMENTO * superficie, " kg"
	Escribir "Arena: ", ARENA * superficie, " m³"
	Escribir "Ladrillos: ", LADRILLOS * superficie, " unidades"
	Escribir "------------------------------"
	
FinSubProceso

SubProceso calcularViga()
	Definir largo Como Real
	Definir CEMENTO, ARENA, PIEDRA, HIERROx8, HIERROx4 Como Real
	
	//Definir materiales
	CEMENTO = 9
	ARENA = 0.02
	PIEDRA = 0.02
	HIERROx8 = 4
	HIERROx4 = 3
	
	//Solicitar largo
	largo = ingresarLargo()
	
	//Mostrar info
	Escribir ""
	Escribir "Materiales necesarios para la viga:"
	Escribir "------------------------------"
	Escribir "Cemento: ", CEMENTO * largo, " kg"
	Escribir "Arena: ", ARENA * largo, " m³"
	Escribir "Piedra: ", PIEDRA * largo, " m²"
	Escribir "Hierro del 8: ", HIERROx8 * largo, " m"
	Escribir "Hierro del 4: ", HIERROx4 * largo, " m"
	Escribir "------------------------------"
	
FinSubProceso

SubProceso calcularColumna()
	Definir largo Como Real
	Definir CEMENTO, ARENA, PIEDRA, HIERROx8, HIERROx4 Como Real
	
	//Definir materiales
	CEMENTO = 7.5
	ARENA = 0.016
	PIEDRA = 0.016
	HIERROx10 = 6
	HIERROx4 = 3
	
	//Solicitar largo
	largo = ingresarLargo()
	
	//Mostrar info
	Escribir ""
	Escribir "Materiales necesarios para la columna:"
	Escribir "------------------------------"
	Escribir "Cemento: ", CEMENTO * largo, " kg"
	Escribir "Arena: ", ARENA * largo, " m³"
	Escribir "Piedra: ", PIEDRA * largo, " m²"
	Escribir "Hierro del 10: ", HIERROx10 * largo, " m"
	Escribir "Hierro del 4: ", HIERROx4 * largo, " m"
	Escribir "------------------------------"
	
FinSubProceso

SubProceso calcularContrapisos()
	Definir espesor Como Entero
	Definir largo, alto, volumen Como Real
	Definir CEMENTO, ARENA, PIEDRA Como Real
	
	//Definir materiales
	CEMENTO = 105
	ARENA = 0.45
	PIEDRA = 0.9
	
	//Solicitar espesor
	espesor = ingresarEspesor()
	
	//Solicitar largo
	largo = ingresarLargo()
	
	//Solicitar alto
	alto = ingresarAlto()
	
	//Calcular volumen
	volumen = calcularVolumen(largo, alto, espesor)
	
	//Mostrar info
	Escribir ""
	Escribir "Materiales necesarios para el contra piso:"
	Escribir "------------------------------"
	Escribir "Cemento: ", CEMENTO * volumen, " kg"
	Escribir "Arena: ", ARENA * volumen, " m³"
	Escribir "Piedra: ", PIEDRA * volumen, " m²"
	Escribir "------------------------------"
	
FinSubProceso

SubProceso calcularTecho()
	Definir espesor Como Entero
	Definir largo, alto, volumen Como Real
	Definir CEMENTO, ARENA, PIEDRA, HIERROx8, HIERROx6 Como Real
	
	//Definir materiales
	CEMENTO = 33
	ARENA = 0.072
	PIEDRA = 0.072
	HIERROx8 = 7
	HIERROx6 = 4
	
	//Solicitar espesor
	espesor = ingresarEspesor()
	
	//Solicitar largo
	largo = ingresarLargo()
	
	//Solicitar alto
	alto = ingresarAlto()
	
	//Calcular volumen
	volumen = calcularVolumen(largo, alto, espesor)
	
	//Mostrar info
	Escribir ""
	Escribir "Materiales necesarios para el techo:"
	Escribir "------------------------------"
	Escribir "Cemento: ", CEMENTO * volumen, " kg"
	Escribir "Arena: ", ARENA * volumen, " m³"
	Escribir "Piedra: ", PIEDRA * volumen, " m²"
	Escribir "Hierro del 8: ", HIERROx8 * volumen, " m"
	Escribir "Hierro del 6: ", HIERROx6 * volumen, " m"
	Escribir "------------------------------"
	
FinSubProceso

SubProceso calcularPisos()
	Definir largo, alto, superficie Como Real
	
	//Solicitar largo
	largo = ingresarLargo()
	
	//Solicitar alto
	alto = ingresarAlto()
	
	//Calcular superficie
	superficie = calcularSuperficie(largo, alto)
	
	//Mostrar info
	Escribir ""
	Escribir "Datos necesarios para el piso:"
	Escribir "------------------------------"
	Escribir "Superficie: ", superficie * 1.10, " m²"
	Escribir "------------------------------"
	
FinSubProceso

SubProceso calcularPintura()
	Definir largo, alto, superficie Como Real
	
	//Solicitar largo
	largo = ingresarLargo()
	
	//Solicitar alto
	alto = ingresarAlto()
	
	//Calcular superficie
	superficie = calcularSuperficie(largo, alto)
	
	//Mostrar info
	Escribir ""
	Escribir "Materiales necesarios para la pintura:"
	Escribir "------------------------------"
	Escribir "Pintura: ", Trunc(100 * superficie / 6) / 100 , " litros"
	Escribir "------------------------------"
	
FinSubProceso

SubProceso calcularIluminacion()
	Definir largo, alto, superficie Como Real
	
	//Solicitar largo
	largo = ingresarLargo()
	
	//Solicitar alto
	alto = ingresarAlto()
	
	//Calcular superficie
	superficie = calcularSuperficie(largo, alto)
	
	//Mostrar info
	Escribir ""
	Escribir "Iluminación necesaria de la habitación:"
	Escribir "------------------------------"
	Escribir "Iluminación mínima: ", superficie * 0.2
	Escribir "------------------------------"
	
FinSubProceso

SubProceso continuar(status Por Referencia)
	Definir res Como Caracter
	
	//Preguntar
	Hacer
		Escribir ""
		Escribir "Deseas continuar?" Sin Saltar
		Leer res
	Mientras Que Minusculas(res) <> "no" Y Minusculas(res) <> "si"
	
	//Si no continuar, cambiar estado
	Si Minusculas(res) == "no" Entonces
		salir(status)
	FinSi
	
FinSubProceso

SubProceso salir(status Por Referencia)
	Escribir "Gracias por utilizar nuestros servicios."
	
	status = Falso
	
FinSubProceso
	