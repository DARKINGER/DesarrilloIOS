
import Foundation

class Empleado{
    private var _horasTrabajadas : Int
    private var _sueldoPorHora : Double

    var horasTrabajadas : Int {return _horasTrabajadas}
    var sueldoPorHora : Double {return _sueldoPorHora}

    func horasTrabajadas(Hrs:Int){
        if Hrs > 0
        {
            _horasTrabajadas = Hrs
        }
    }
    func sueldoPorHora(sueldo:Double){
        if sueldo > 0.0{
            _sueldoPorHora = sueldo
        }
    }
    func CalcularSalario()->Double{
        if _horasTrabajadas > 0 && _sueldoPorHora > 0.0{
            return (Double(_horasTrabajadas)*_sueldoPorHora)
        }
        return 0.0
    }
    init(hrs:Int,sp:Double){
        _horasTrabajadas = hrs
        _sueldoPorHora = sp
    }
}

class EmpleadoSinHorasExtras:Empleado{

    override func CalcularSalario()->Double{
        if sueldoPorHora > 0.0 && horasTrabajadas > 0{
            return (Double(horasTrabajadas) * sueldoPorHora)
        }
        return 0.0
    }
     init( hrs : Int, sp : Double, _ a: Double = 0) {
        super.init(hrs: hrs, sp: sp)
    }
}
class EmpleadoConHorasDoubles:Empleado{
    private var _horasExtras : Int
    var horasExtras : Int {return _horasExtras}
    func horasExtras(Hrs:Int){
        if Hrs > 0{
            _horasExtras = Hrs
        }
    }
    override func CalcularSalario()->Double{
        return ((Double(horasExtras) * (sueldoPorHora*2)) + (Double(horasTrabajadas) * (sueldoPorHora)))
    }
     init( hrs : Int, sueldoPorHora : Double, _ a: Double = 0) {
        _horasExtras = (hrs - 40)
        super.init(hrs: hrs-_horasExtras, sp: sueldoPorHora)
    }
}
class EmpleadoConHorasTriples:Empleado{
    private var _horasExtras : Int
    var horasExtras : Int {return _horasExtras}
    func horasExtras(Hrs:Int){
        if Hrs > 0{
            _horasExtras = Hrs
        }
    }
    override func CalcularSalario()->Double{
        return ((Double(horasExtras) * (sueldoPorHora*3)) + (Double(horasTrabajadas) * (sueldoPorHora)))
    }
    init( hrs : Int, sueldoPorHora : Double, _ a: Double = 0) {
        _horasExtras = (hrs - 40)
        super.init(hrs: hrs-_horasExtras, sp: sueldoPorHora)
    }
}

var empleado = EmpleadoConHorasTriples(hrs: 46, sueldoPorHora:2.0)
var empleado2 = EmpleadoConHorasDoubles(hrs: 43, sueldoPorHora:2.0)
var empleado3 = EmpleadoSinHorasExtras(hrs: 40, sp:2.0)

print(empleado3.CalcularSalario())
print(empleado2.CalcularSalario())
print(empleado.CalcularSalario())

