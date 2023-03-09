

enum Eleccion {
    case Piedra, Papel, Tijera
}
enum Estado {
    case Gana, Pierde, Empata
}
func juego(eleccion: [Eleccion]) -> Estado {
    var jugador1: Eleccion = .Piedra
    var jugador2: Eleccion = .Piedra
    var Estado: Estado = .Empata
    var cont = 0
    for step in eleccion {
        switch step {
        case .Piedra:
        if cont == 0{
            jugador1 = .Piedra
        }
        else {
            jugador2 = .Piedra
        }
        case .Papel:
             if cont == 0{
            jugador1 = .Papel
             }
        else {
            jugador2 = .Papel
        }
        case .Tijera:
             if cont == 0{
            jugador1 = .Tijera
             }
        else {
            jugador2 = .Tijera
        }
        }
        cont += 1
    }

    if (jugador1 == .Piedra && jugador2 == .Piedra){
            Estado = .Empata
    }else{
        if (jugador1 == .Piedra && jugador2 == .Papel){
            Estado = .Pierde
        }else{
            if (jugador1 == .Piedra && jugador2 == .Tijera){
                Estado = .Gana
            }
        }
    }
    if (jugador1 == .Papel && jugador2 == .Piedra){
            Estado = .Gana
    }else{
        if (jugador1 == .Papel && jugador2 == .Papel){
            Estado = .Empata
        }else{
            if (jugador1 == .Papel && jugador2 == .Tijera){
                Estado = .Pierde
            }
        }
    }
    if (jugador1 == .Tijera && jugador2 == .Piedra){
            Estado = .Pierde
    }else{
        if (jugador1 == .Tijera && jugador2 == .Papel){
            Estado = .Gana
        }else{
            if (jugador1 == .Tijera && jugador2 == .Tijera){
                Estado = .Empata
            }
        }
    }

    return (Estado)
}


//let elec: [Eleccion] = [.Piedra, .Tijera]
let elec: [Eleccion] = [.Piedra, .Papel]
let ganador = juego(eleccion:elec)
print("La posicion final es (\(ganador))")


