


class Main{
    func Diferencia(horaInicial : Int, minutoInicial : Int = 0, horaFinal : Int, minutoFinal : Int = 0) -> Int {
        return ((horaFinal * 60 + minutoFinal) - (horaInicial * 60 + minutoInicial))
    }
}

let main = Main()   
//var hrI = 12, minI = 3, hrF = 13, minF = 10
var hrI = 8, minI = 10, hrF = 17, minF = 30
print(main.Diferencia(horaInicial: hrI, /*sminutoInicial : minI,*/ horaFinal : hrF, minutoFinal : minF))
