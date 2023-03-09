

class Figura{
    func CalcularArea() -> Double{
        var area = 0.0

        return area
    }
    init(){

    }
}

class Rectangulo:Figura{

    private var _Largo : Double
    private var _Ancho : Double

    func Largo(metros: Double){
        if metros > 0{
            _Largo = metros
        }
    }
    var Largo: Double {return _Largo}

    func Ancho(metros: Double){
        if metros > 0{
            _Ancho = metros
        }
    }
    var Ancho: Double {return _Ancho}

    override func CalcularArea() -> Double{
       var area = 0.0
       area = _Ancho * _Largo 
       return area
    }

    override init(){
        _Ancho = 0
        _Largo = 0
    }

}


class Circulo:Figura{

    private var _Radio : Double

    func Radio(metros: Double){
        if metros > 0{
            _Radio = metros
        }
    }
    var Radio: Double {return _Radio}

    override func CalcularArea() -> Double{
       var area = 0.0
       area = (3.1416 * (_Radio * _Radio))
       return area
    }

    override init(){
        _Radio = 0
    }

}

class Triangulo:Figura{

    private var _Largo : Double
    private var _Ancho : Double

    func Largo(metros: Double){
        if metros > 0{
            _Largo = metros
        }
    }
    var Largo: Double {return _Largo}

    func Ancho(metros: Double){
        if metros > 0{
            _Ancho = metros
        }
    }
    var Ancho: Double {return _Ancho}

    override func CalcularArea() -> Double{
       var area = 0.0
       area = (_Ancho * _Largo) / 2
       return area
    }

    override init(){
        _Ancho = 0
        _Largo = 0
    }

}

var rectangulo = Rectangulo()
var circulo = Circulo()
var triangulo = Triangulo()
rectangulo.Largo(metros: 6)
rectangulo.Ancho(metros: 8)
circulo.Radio(metros: 14)
triangulo.Largo(metros:4)
triangulo.Ancho(metros:3)

print(rectangulo.CalcularArea(), circulo.CalcularArea(), triangulo.CalcularArea())
