


var n = 15


for i in 0..<n {
    
    for _ in 0..<(n-i){
        print(" ", terminator: "")
    }

    for _ in 0..<((i*2)+1){
        print("*", terminator: "")
    }

    print(" ")

}
