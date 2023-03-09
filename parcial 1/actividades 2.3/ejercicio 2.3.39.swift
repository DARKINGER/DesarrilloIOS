/*2.3.39. Escriba una función que reciba tres valores enteros y devuelva al mismo 
tiempo el mayor y el menor de ellos. Utilice el _ para ignorar el nombre externo 
de cada parámetro*/


class Main{

func MaxMin(_ num1 : Int, _ num2 : Int, _ num3 : Int)->(Mayor:Int,Menor: Int)
{
var mayor = 0
        if(num1 > num2)
        {
            if num1 > num3
            {
                mayor = num1
            }else{
                mayor = num3
            }
        }else{
            if (num2 > num3){
                mayor = num2
            }else{
            mayor = num3
            }
        }
var menor = 0
         if(num1 < num2)
        {
            if num1 < num3
            {
                menor = num1
            }else{
                menor = num3
            }
        }else{
            if (num2 < num3){
                menor = num2
            }else{
            menor = num3
            }
        }
        return (mayor, menor)
}
}

let main = Main()
//var num1 = 2, num2 = 5, num3 = 8
var num1 = 6, num2 = 3, num3 = 6

print(main.MaxMin(num1, num2, num3))



