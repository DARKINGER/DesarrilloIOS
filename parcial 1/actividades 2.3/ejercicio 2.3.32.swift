


class Main{
    func Mayor(_ a : Int, _ b : Int) -> Int {
        let resultado = (a > b) ? a : b
        return resultado
    }

}

let main = Main()

print(main.Mayor(10, 6))
