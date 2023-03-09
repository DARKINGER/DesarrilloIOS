/*
Hay  una  pared  rectangular  que  tiene  una  ventana  rectangular;  se 
requiere un programa que dadas las dimensiones (largo y ancho) de la ventana 
y de la pared, imprima los minutos necesarios para pintar la pared, sabiendo 
que se puede pintar 1 m² en 10 minutos. Utilice la siguiente clase: 
*/


class Rectangulo{

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

    func CalcularArea() -> Double{
        return (_Ancho * _Largo)
    }

    init(){
        _Ancho = 0
        _Largo = 0
    }

}
var pared = Rectangulo()
var ventana = Rectangulo()
pared.Largo(metros: 3)
pared.Ancho(metros: 3)
ventana.Largo(metros: 1)
ventana.Ancho(metros: 1)

print((pared.CalcularArea() - ventana.CalcularArea()) * 10)
/*
pared.Largo(metros: 10)
pared.Ancho(metros: 5)

ventana.Largo(metros: 1)
ventana.Ancho(metros: 2)
*/