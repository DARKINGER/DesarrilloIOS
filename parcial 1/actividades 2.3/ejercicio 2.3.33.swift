



class Main{
    func vector(n : Int) -> [Int]{    
    var vector = [Int]()
    for i in 0..<n{
        vector.append(i+1)
    }
    return vector
    }
}

let n = 8
let main = Main()
print(main.vector(n : n))

