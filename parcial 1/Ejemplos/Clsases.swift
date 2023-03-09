


//por defecto se etiquetan como publicos

class CuentaBanco{
    public var Numero : String
    var NomCliente : String
    private let tipoCambio = 20.0
    private var _saldo: Double
    //propiedad de unicamente lectura
    var Saldo: Double{
        get{return _saldo}
    }
    //propiedades de solo lectura
    var fechaApertura : Date {return Date()}

    var SaldoUSD: Double{
        get {return _saldo}
    }

    //constructores debeb de contener al menos un constructor

    init(){
        Numero = "0"
        _saldo = 0.0
        NomCliente = " "
    }

    init(_ Numero : String, _ NomCliente : String, saldoCuenta:Double){
        self.Numero = Numero
        self.NomCliente = NomCliente
        _saldo = saldoCuenta
    }

    //Metodos
    func mostrarDatos(){
        print("Numero de cuenta: \(Numero)")
        print("Cliente: \(NomCliente)")
        print("Fecha de apertura: \(fechaApertura)")
        print("Saldo: \(Saldo)")
    }

    func depositar(monto : Double){
        _saldo += monto
    }

    func retitrar(monto : Double)->Bool{
        if _saldo >= monto
        {
            _saldo -= monto
            return true
        }else{
        return false
        }
    }

    //metodo estatico
    class func saldoMinimo() -> Double{
        return 50
    }
}


var cuent1 = CuentaBanco()
cuenta1.mostrarDatos()
print()

var cuenta2: CuentaBanco = CuentaBanco("20", "Juan", saldoCuenta: 100)
cuenta2.depositar(monto: 10)
cuenta2.mostrarDatos()
print()

if cuenta2.retitrar(monto: 500){
    print("Retiro exitoso")
}

//erencia
class CuentaAhorro: CuentaBanco
{
    var diasInversion: Int
    init(_ numero: String, _ nomCliente: String, _ saldo: Double, _ diasInversion: Int) {
        self.diasInversion = diasInversion
        //llamando al constructor padre = super (el el constructor del padre)
        super.init(numero, nomCliente, saldoCuenta: saldo)
    }

    private func proyeccionFinanciera(_ comisionAnueal: Double = 0.045) -> Double {
        let comisionDiaria = comisionAnueal / 365.0
        let comisionPlazo = comisionDiaria * Double(diasInversion)
        return Saldo + (Saldo * comisionPlazo)
    }

    //sobreescritura de un metodo
    override func mostrarDatos(){
        super.mostrarDatos()
        print("Dias de inversion: \(diasInversion)")
        print("Proyecto financiera al 4.5% anuam, a \(diasInversion) dias \(proyeccionFinanciera)")

    }
}

var cuenta3 = CuentaAhorro("3", "Pedro", 150000, 60)
cuenta3.mostrarDatosen()
print()

cuenta3.depositar(monto: 25000)







