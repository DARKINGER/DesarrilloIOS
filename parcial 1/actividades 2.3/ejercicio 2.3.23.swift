


var decimal = 78, total = 0, binario = ""

while decimal > 0 {
    binario += ((decimal % 2) == 0) ? "0" : "1"
    decimal = decimal / 2
}

for char in binario.reversed() {
    print(char, terminator: "")
}
print()


