

var a = [[3,5,8,2], [2,7,9,5], [2,8,9,2], [4,6,7,1]]
var DP = [0,0,0,0], DI = [0,0,0,0]

for i in 0..<a.count {
    for j in 0..<a[i].count {
        if i == j {
            DP[i] = a[i][j]
        }
    }

}

var cont = 0
for _ in 0..<a.count {
    cont += 1
}

for i in (0..<a.count){
    cont -= 1
    for j in (0..<a[i].count).reversed(){
        if (j == cont) {
            DI[i] = a[i][j]
        }
    }
}

print(a)
print(DP)
print(DI)

