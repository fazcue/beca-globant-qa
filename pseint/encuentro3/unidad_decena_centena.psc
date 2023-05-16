Algoritmo unidad_decena_centena
	Definir num, unidad, decena, centena Como Entero
	
	Escribir "Vamos a obtener la unidad, decena y centena de un numero..."
	Escribir "Ingresa un numero de 3 cifras:"
	Leer num
	
	//Unidad
	//haciendo moodulo 10 (ya que estamos trabajando en sistema decimal), obtenemos el resto, en este caso la unidad
	//ej: 527 MOD 10 -> 10 * 52 = 520 -> resto: 7
	unidad = num MOD 10
	
	//Decena
	//al dividir el número por 10, corremos la coma 1 lugar, luego truncamos, y finalmente obtemos el resto con mod 10
	//ej: 527 / 10 = 52.7 -> trunc(52.7) = 52 -> 52 MOD 10 -> 10 * 5 -> resto: 2
	decena = trunc(num / 10) MOD 10
	
	//Centena
	//al dividir el número por 100, corremos la coma 2 lugares, y luego truncamos
	//ej: 527 / 100 = 5.27 -> trunc(5.27) = 5
	centena = trunc(num / 100)
	
	Escribir "Centena: ", centena
	Escribir "Decena: ", decena
	Escribir "Unidad: ", unidad
	
FinAlgoritmo
