//acepta valores pares e impares


class Main{
    
    func Rusa(_ num1 : inout Int, _ num2 : inout Int, _ res : inout Int, 
     _ count : inout Int,  _ resPar : inout Int) -> Int{

        var aux5 = num1/2, aux6 = num2*2
        var aux7 = num1/2, aux8 = num2*2	

        if (num1 == 1){ 
        res += num2
        resPar = num2
        return num2 
        }else {
            //division par e impar
            if (par(num1) == true){
            return Rusa(&aux7, &aux8, &res, &count, &resPar)
            }else{
                count += 1
                res += num2
            return Rusa(&aux5, &aux6, &res, &count, &resPar)
            }
        }
    }

    func par( _ num1 : Int) -> Bool{
        if ((num1 % 2) != 0){
            return false
        }else{
            return true
        }
    }


}

let main = Main()


var num1 = 27, num2 = 82 
//var num1 = 8, num2 = 120 


var res = 0, otro = 0, count = 0, resPar = 0
var aux1 = num1/2, aux2 = num2*2
var aux3 = num1 * 2, aux4 = num2/2	

//decicion de orden
if (num1 < num2) {
    if (main.par(aux1) == false){
        count += 1
        res += num2
    }
otro = main.Rusa(&aux1, &aux2, &res, &count, &resPar)
}else{
    if (main.par(aux4) == false){
        count += 1
        res += num1
    }
 otro = main.Rusa(&aux3, &aux4, &res, &count, &resPar)  
}

if count != 0{
print(res)
}else{
    print(resPar)
}


