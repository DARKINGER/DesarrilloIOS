import Foundation

// Definición de la clase abstracta Vehículo
class Vehiculo {
    let numeroPlaca: String
    
    init(numeroPlaca: String) {
        self.numeroPlaca = numeroPlaca
    }
    
    func calcularImporte() -> Double {
        fatalError("Este método debe ser sobrescrito por las clases hijas")
    }
    
    func mostrarDatos() {
        fatalError("Este método debe ser sobrescrito por las clases hijas")
    }
}

class Autobus: Vehiculo {
    let precioPorKilometro: Double
    var kilometrosAlRentar: Double
    var kilometrosAlDevolver: Double
    
    init(numeroPlaca: String, precioPorKilometro: Double, kilometrosAlRentar: Double, kilometrosAlDevolver: Double) {
        self.precioPorKilometro = precioPorKilometro
        self.kilometrosAlRentar = kilometrosAlRentar
        self.kilometrosAlDevolver = kilometrosAlDevolver
        super.init(numeroPlaca: numeroPlaca)
    }
    
    override func calcularImporte() -> Double {
        let kilometrosRecorridos = kilometrosAlDevolver - kilometrosAlRentar
        return kilometrosRecorridos * precioPorKilometro
    }
    
    override func mostrarDatos() {
        print("Autobus con placa \(numeroPlaca)")
        print("Kilometros al rentar: \(kilometrosAlRentar)")
        print("Kilometros al devolver: \(kilometrosAlDevolver)")
    }
}

class Tractor: Vehiculo {
    let precioPorDia: Double
    let diaDeRenta: Int
    let diaDeDevolucion: Int
    
    init(numeroPlaca: String, precioPorDia: Double, diaDeRenta: Int, diaDeDevolucion: Int) {
        self.precioPorDia = precioPorDia
        self.diaDeRenta = diaDeRenta
        self.diaDeDevolucion = diaDeDevolucion
        super.init(numeroPlaca: numeroPlaca)
    }
    
    override func calcularImporte() -> Double {
        let diasDeRenta = diaDeDevolucion - diaDeRenta
        return Double(diasDeRenta) * precioPorDia
    }
    
    override func mostrarDatos() {
        print("Tractor con placa \(numeroPlaca)")
        print("Doa de renta: \(diaDeRenta)")
        print("Doa de devolucion: \(diaDeDevolucion)")
    }
}

let autobus = Autobus(numeroPlaca: "123", precioPorKilometro: 10, kilometrosAlRentar: 100, kilometrosAlDevolver: 200)
let tractor = Tractor(numeroPlaca: "456", precioPorDia: 50, diaDeRenta: 5, diaDeDevolucion: 10)

autobus.mostrarDatos()
let res = autobus.calcularImporte()
print("Importe a pagar por el autobus: \(res)")

