import Foundation
class Automovil{
    private var _NumeroDeSerieMotor : String
    private var _Marca : String
    private var _Año : Date
    private var _Precio : Double

    var NumeroDeSerieMotor : String {return _NumeroDeSerieMotor}
    var Marca : String {return _Marca}
    var Año : Date {return _Año}
    var Precio : Double {return _Precio}

    init( NumeroMotor : String, marca: String, Año: Date, precio: Double){
        _NumeroDeSerieMotor = NumeroMotor
        _Marca = marca
        _Año = Año
        _Precio = precio
    }
}

class AutoCompacto:Automovil{

    private var _CantidadDePasajeros : Int
    var Pasajeros : Int {return _CantidadDePasajeros}

    init( _ NumeroMotor : String, Marca: String, Año: Date, precio: Double, pasajero : Int){
        _CantidadDePasajeros = pasajero
        super.init(NumeroMotor:NumeroMotor, marca:Marca, Año:Año, precio: precio)
    }
}

class AutoDeLujo:Automovil{

    private var _CantidadDePasajeros : Int
    var Pasajeros : Int {return _CantidadDePasajeros}

    init( _ NumeroMotor : String, Marca: String, Año: Date, precio: Double, pasajero : Int){
        _CantidadDePasajeros = pasajero
        super.init(NumeroMotor:NumeroMotor, marca:Marca, Año:Año, precio: precio)
    }

}
class Vagoneta:Automovil{

    private var _CantidadDePasajeros : Int
    var Pasajeros : Int {return _CantidadDePasajeros}

    init( _ NumeroMotor : String, Marca: String, Año: Date, precio: Double, pasajero : Int){
        _CantidadDePasajeros = pasajero
        super.init(NumeroMotor:NumeroMotor, marca:Marca, Año:Año, precio: precio)
    }

}
class Camioneta:Automovil{

    private var _CapacidadCarga : Double
    var Carga : Double {return _CapacidadCarga}
    private var _CantidadEjes : Int
    var Ejes : Int {return _CantidadEjes}
    private var _CantidadRodada : Int
    var Rodada : Int {return _CantidadRodada}

    func Carga(Kg : Double){
        if Kg > 0.0
        {
            _CapacidadCarga = Kg
        }
    }
    func Ejes(ejes: Int){
        if ejes >= 4 {
            _CantidadEjes = ejes
        }
    }
    func Rodada(rodada: Int){
        if rodada > 0
        {
            _CantidadRodada = rodada
        }
    }

    init( _ NumeroMotor : String, Marca: String, Año: Date, precio: Double, 
     carga : Double, ejes : Int, rodada : Int){
        _CapacidadCarga = carga
        _CantidadEjes = ejes
        _CantidadRodada = rodada
        super.init(NumeroMotor:NumeroMotor, marca:Marca, Año:Año, precio: precio)
    }

}

var miata = AutoCompacto("19100168",Marca: "Mazda", Año: Date(), precio: 250000.99, pasajero: 2)

print(miata)
print(miata.Marca)
print(miata.Año)


