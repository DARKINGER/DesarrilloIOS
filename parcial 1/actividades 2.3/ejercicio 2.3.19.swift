


var n = 9

for i in 1..<n {
    
    if i == (n - (i-1)) {
        print(i, terminator: " ")
        break
    }else {
        print(i, terminator: " ") 
        print((n - (i-1)), terminator: " ")
    }
}


