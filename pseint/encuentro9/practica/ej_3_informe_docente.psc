Algoritmo informe_docente
	Definir i, totalStudents Como Entero
	Definir note1, note2, note3, avg Como Real
	
	//Defino variables para calcular "nota promedio final de alumnos que reprobaron"
	Definir totalFailers Como Entero
	Definir sumFailers Como Real
	
	//Defino variables para calcular "porcentaje de alumnos con nota integrador mayor a 7.5"
	Definir totalGoodNote1 Como Entero
	
	//Defino variables para obtener "mayor nota obtenida en exposiciones"
	Definir bestNote2 Como Real
	
	//Defino variables para calcular "total de estudiantes que obtuvieron en el parcial entre 4 y 7.5"
	Definir totalRegularNote3 Como Entero
	
	//Variables
	totalFailers = 0
	sumFailers = 0
	totalGoodNote1 = 0
	bestNote2 = 0
	totalRegularNote3 = 0
	
	//Bucle hacer mientras que total de alumnos sea menor a 0
	Hacer
		//Solicitar cantidad de estudiantes
		Escribir "Ingresa la cantidad de estudiantes:"
		Leer totalStudents
	Mientras Que totalStudents < 0
	
	//Bucle para cada estudiante, hacer:
	Para i = 1 Hasta totalStudents Con Paso 1 Hacer
		
		//Solicitar notas del estudiante
		Escribir "Alumno #", i, ": Ingresa la nota del TP:"
		Leer note1
		Escribir "Alumno #", i, ": Ingresa la nota de la EXPOSICION:"
		Leer note2
		Escribir "Alumno #", i, ": Ingresa la nota del PARCIAL:"
		Leer note3
		
		//Calcular promedio del estudiante
		avg = note1 * 0.35 + note2 * 0.25 + note3 * 0.4
		
		//Reprobo? si obtuvo menos de 6.5 de promedio, actualizar datos
		Si avg < 6.5 Entonces
			sumFailers = sumFailers + avg
			totalFailers = totalFailers + 1
		FinSi
		
		//Aprobo con mas de 7.5 en TP? actualizar datos
		Si note1 > 7.5 Entonces
			totalGoodNote1 = totalGoodNote1 + 1
		FinSi
		
		//Si obtuvo la mejor nota en Exposicion, actualizar dato
		Si note2 > bestNote2 Entonces
			bestNote2 = note2
		FinSi
		
		//Si obtuvo entre 4 y 7.5 en el Parcial, actualizar datos
		Si note3 >= 4 Y note3 <= 7.5 Entonces
			totalRegularNote3 = totalRegularNote3 + 1
		FinSi
		
	FinPara
	
	//Muestro nota promedio de quienes reprobaron
	Escribir "La nota promedio de aquellos alumnos que reprobaron es: ", sumFailers / totalFailers
	
	//Muestro porcentaje de quienes tienen nota integrador (TP, note1) mayor a 7.5
	Escribir "El porcentaje de alumnos con nota de TP integrador mayor a 7.5 es: ", (totalGoodNote1 * 100) / totalStudents
	
	//Muestro mayor nota obtenida en exposiciones (note2)
	Escribir "La mayor nota obtenida en exposiciones es: ", bestNote2
	
	//Muestro el total de alumnos que obtuvieron en el parcial entre 4 y 7.5 (note3)
	Escribir "El total de alumnos que obtuvieron en el parcial entre un 4 y 7.5 es: ", totalRegularNote3
FinAlgoritmo
