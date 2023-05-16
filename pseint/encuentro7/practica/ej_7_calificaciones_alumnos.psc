Algoritmo calificaciones_alumnos
	Definir name Como Caracter
	Definir note1, note2, note3, average Como Real
	
	//Solicito nombre del alumno
	Escribir "Ingresa el nombre del alumno:"
	Leer name
	
	//Bucle mientras nombre no sea igual a cadena vacia
	Mientras name <> "" Hacer
		//Si nombre es distinto a cadena vacia
		//Solicito notas
		//Calculo promedio
		Si name <> "" Entonces
			Escribir "Ingresa las notas:"
			Leer note1, note2, note3
			
			Si (note1 >= 0 Y note1 <= 10) Y (note2 >= 0 Y note2 <= 10) Y (note3 >= 0 Y note3 <= 10) Entonces
				average = note1 * 0.1 + note2 * 0.5 + note3 * 0.4
				Escribir "El promedio del alumno ", name, " es: ", average
			SiNo
				Escribir "Error en las calificaciones"
			FinSi
		FinSi
		
		//Solicito nuevo nombre del alumno
		Escribir "Ingresa el nombre del siguiente alumno:"
		Leer name
		
	Fin Mientras
	
	Escribir "Calificaciones de alumnos finalizada"
	
FinAlgoritmo