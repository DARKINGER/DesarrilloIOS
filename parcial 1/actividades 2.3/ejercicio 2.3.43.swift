

//var f1 = (dividendo : 34, divisor : 3), f2 = (dividendo : 11,divisor : 2)
//var f1 = (dividendo : 1, divisor : 5), f2 = (dividendo : 1,divisor : 6)
var f1 = (dividendo : 3, divisor : 12), f2 = (dividendo : 3,divisor : 6)

var res = operacion(f1.dividendo,f1.divisor,f2.dividendo,f2.divisor)


print(res)

func operacion(_ div1 : Int, _ div2:Int, _ div3 : Int, _ div4:Int) -> (Int,Int){
return (((div1 * div4)+(div2 * div3)),(div2 * div4))
}




func Simplifica(_ dividendo : Int, _ divisor : Int) ->(dividendo : Int, divisor : Int){
let mayor = (dividendo > divisor) ? dividendo : divisor

for i in (2..<mayor).reversed() {
    if ((divisor % i) == 0 && (dividendo % i) == 0){
    return Simplifica(dividendo/i, divisor/i)
}

}

return (dividendo, divisor)
}

print("Simplificado = ", terminator : " ")
print(Simplifica(res.dividendo, res.divisor))



