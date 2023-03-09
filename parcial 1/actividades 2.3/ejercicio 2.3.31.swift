


var a = [[3,5,8,9,2], [1,4,2,1,0], [4,5,4,8,1], [9,8,1,0,3], [7,2,1,1,3]]
var res = 0
for i in 0..<a.count {
    for j in 0..<a[i].count {
        if (i != 0 && j != 0 && i != a.count - 1 && j != a.count - 1)  {
            //Evita la primera y ultima columna
            if ((i == 0 && j == 0) || (i == a.count - 1 && j == a.count - 1)){
                //Evita la primera y ultima fila
            }else{
            res += a[i][j]
            }
        }
    }
}
print(res)