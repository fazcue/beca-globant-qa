Algoritmo enteros_distintos_cero
	Definir num, max, min, sum, count Como Entero
	Definir avg Como Real
	
	//Variables
	min = 0
	max = 0
	count = 0
	sum = 0
	
	//Bucle hacer mientras num <> 0
	Hacer
		//Solicito un numero
		Escribir "Ingresa un numero:"
		Leer num
		
		//Es distinto a 0?
		Si num <> 0 Entonces
			
			//Si es el primer numero ingresado, guardarlo como minimo y maximo
			//Sino, verificar si num < min Y num > max
			Si count == 0 Entonces
				min = num
				max = num
			SiNo
				//Es min?
				Si num < min Entonces
					min = num
				FinSi
				
				//Es max?
				Si num > max Entonces
					max = num
				FinSi
			FinSi
			
			//+1 al contador
			count = count + 1
			
			//Añado el num a la suma
			sum = sum + num
			
		FinSi
	Mientras Que num <> 0
	
	//Si se ingreso al menos 1 numero, mostrar info, sino mensaje de error
	Si count > 0 Entonces
		
		//Calculo promedio
		avg = sum / count
		
		//Muestro informacion
		Escribir "El num minimo ingresado es: ", min
		Escribir "El num maximo ingresado es: ", max
		Escribir "El promedio de los numeros ingresados es: ", avg
		
	SiNo
		Escribir "No ingresaste ningun numero distinto a 0."
	FinSi
FinAlgoritmo
