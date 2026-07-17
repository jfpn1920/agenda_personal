Algoritmo agenda_personal
	Definir opcion, totalActividades Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir encontrado Como Logico
	Definir siguienteID Como Entero
	Dimension id[100]
	Dimension titulo[100]
	Dimension descripcion[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension lugar[100]
	Dimension estado[100]
	totalActividades <- 0
	siguienteID <- 1
	//------------------------------------//
	//--|menu_principal_agenda_personal|--//
	//------------------------------------//	
	Repetir
		Escribir "menu principal agenda personal"
		Escribir "1) registrar actividad"
		Escribir "2) editar actividad"
		Escribir "3) eliminar actividad"
		Escribir "4) buscar actividad"
		Escribir "5) listar actividades"
		Escribir "6) ver detalles de la actividad"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//-------------------------//
			//--|registrar_actividad|--//
			//-------------------------//
			1:
				Escribir "registrar actividad"
				id[totalActividades + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalActividades + 1]
				Escribir "ingrese el título:"
				Leer titulo[totalActividades + 1]
				Escribir "ingrese la descripción:"
				Leer descripcion[totalActividades + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalActividades + 1]
				Escribir "ingrese la hora:"
				Leer hora[totalActividades + 1]
				Escribir "ingrese el lugar:"
				Leer lugar[totalActividades + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalActividades + 1]
				totalActividades <- totalActividades + 1
				Escribir "actividad registrada correctamente."
			//----------------------//
			//--|editar_actividad|--//
			//----------------------//
			2:
				Escribir "editar actividad"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalActividades Hacer
						Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la actividad que desea editar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalActividades Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo título:"
							Leer titulo[i]
							Escribir "ingrese la nueva descripción:"
							Leer descripcion[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese la nueva hora:"
							Leer hora[i]
							Escribir "ingrese el nuevo lugar:"
							Leer lugar[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "actividad editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una actividad con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|eliminar_actividad|--//
			//------------------------//
			3:
				Escribir "eliminar actividad"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalActividades Hacer
						Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la actividad que desea eliminar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalActividades Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalActividades Entonces
								Para j <- i Hasta totalActividades - 1 Hacer
									id[j] <- id[j + 1]
									titulo[j] <- titulo[j + 1]
									descripcion[j] <- descripcion[j + 1]
									fecha[j] <- fecha[j + 1]
									hora[j] <- hora[j + 1]
									lugar[j] <- lugar[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalActividades <- totalActividades - 1
							Escribir "actividad eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una actividad con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|buscar_actividad|--//
			//----------------------//
			4:
				Escribir "buscar actividad"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "ingrese el id de la actividad:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalActividades Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrado"
							Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una actividad con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|listar_actividades|--//
			//------------------------//
			5:
				Escribir "listar actividades"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalActividades Hacer
						Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", estado[i]
					FinPara
				FinSi
			//-------------------------------//
			//--|ver_detalles_de_actividad|--//
			//-------------------------------//
			6:
				Escribir "ver detalles de la actividad"
				Si totalActividades = 0 Entonces
					Escribir "no hay actividades registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalActividades Hacer
						Escribir id[i], " | ", titulo[i], " | ", descripcion[i], " | ", fecha[i], " | ", hora[i], " | ", lugar[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la actividad:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalActividades Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la actividad"
							Escribir "id: ", id[i]
							Escribir "título: ", titulo[i]
							Escribir "descripción: ", descripcion[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "lugar: ", lugar[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una actividad con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//				
			7:
				Escribir "gracias por utilizar la Agenda Personal."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo