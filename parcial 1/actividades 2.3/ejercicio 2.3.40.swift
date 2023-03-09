enum Direction {
    case Arriba, Abajo, Izquierda, Derecha
}

func calculaPosicion(pasos: [Direction]) -> (x: Int, y: Int) {
    var x = 0
    var y = 0
    
    for step in pasos {
        switch step {
        case .Arriba:
            y += 1
        case .Abajo:
            y -= 1
        case .Izquierda:
            x -= 1
        case .Derecha:
            x += 1
        }
    }
    
    return (x, y)
}

//let pasos: [Direction] = [.Arriba, .Derecha, .Abajo, .Izquierda, .Arriba, .Arriba]
let pasos: [Direction] = [.Arriba, .Derecha, .Arriba, .Derecha, .Arriba, .Derecha, .Abajo, .Derecha]

let posicionFinal = calculaPosicion(pasos: pasos)
print("La posicion final es (\(posicionFinal.x), \(posicionFinal.y))")


/** Comience en (5, 2) 
arriba, derecha, arriba, derecha, arriba, derecha, abajo, derecha
(9, 4)
*/