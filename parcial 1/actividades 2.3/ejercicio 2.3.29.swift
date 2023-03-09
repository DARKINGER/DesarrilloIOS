



var a = [ [2,0,1] , [3,0,0] , [5,1,1]]
var b = [ [1,0,1] , [1,2,1] , [1,1,0]]
var res = [[Int]](), res2 = [Int]()
var mult = [[Int]]()
//print(a.count)

for i in 0..<a.count{
    for j in 0..<a[i].count{
        //a[i][j] = a[i][j] + b[i][j]
        let num1 = a[i][j]
        let num2 = b[i][j]
        
        res2.append(num1 + num2)
    }
        res.append(res2)
        res2 = []
}
print("a)")
print(res)
res = []
res2 = []
for i in 0..<a.count{
    for j in 0..<a[i].count{
        //a[i][j] = a[i][j] + b[i][j]
        let num1 = a[i][j]
        let num2 = b[i][j]
        
        res2.append(num1 - num2)
    }
        res.append(res2)
        res2 = []
}
print("b)")
print(res)

res = []
res2 = []

res = [[0,0,0],[0,0,0],[0,0,0]]
for i in 0..<a.count{
    for j in 0..<a[i].count{

        for k in 0..<b[i].count {
            let num1 = a[i][k]
            let num2 = b[k][j]
            let num3 = res[i][j]
            res2.append( (num1 * num2) + num3) 
            res[i][j] = ((num1 * num2) + num3)
        }
        mult = res
       
    }
   
}
print("c)")
print(mult)