extends Node2D

const CENTRO = Vector2(640, 360)
var puntajejugador = -1
var puntajecomputadora = -1

func _on_gol_body_entered(body):
	puntajecomputadora += 1
	$marcadorcomputadora.text = str(puntajecomputadora)
	reset()


func _on_gol_2_body_entered(body):
	puntajejugador += 1
	$marcadorjugador.text = str(puntajejugador)
	reset()

func reset():
	$pelota.position = CENTRO
	$pelota.call("velocidad_pelota")
	$jugador1.position.y = CENTRO.y
	$computadora.position.y = CENTRO.y
