



class Main{

    func Factorial (_ num : inout Int ) -> Int{
        if num == 1 {
            return 1
        }else {
            var aux = num - 1
        return (num * Factorial(&aux))
        }
    }
}


let main = Main()

var num = 10

print(main.Factorial(&num))



