var tentativas: [String] = ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"]

var ab: [Int] = []
var bc: [Int] = []
var cd: [Int] = []
var poltronas = 45
var i = 0

for tentativa in tentativas {

    i = i + 1

    if tentativa == "A>B" && ab.count < poltronas {
        ab.append(i)
    }

    if tentativa == "A>C" && ab.count < poltronas && bc.count < poltronas {
        ab.append(i)
        bc.append(i)
    }

    if tentativa == "A>D" && ab.count < poltronas && bc.count < poltronas && cd.count < poltronas {
        ab.append(i)
        bc.append(i)
        cd.append(i)
    }

    if tentativa == "B>C" && bc.count < poltronas {
        bc.append(i)
    }

    if tentativa == "B>D" && bc.count < poltronas && cd.count < poltronas {
        bc.append(i)
        cd.append(i)
    }

    if tentativa == "C>D" && cd.count < poltronas {
        cd.append(i)
    }

    if ab.contains(i) || bc.contains(i) || cd.contains(i) {
        print("\(i) - \(tentativa) - VENDER")
    } else {
        print("\(i) - \(tentativa) - NAO VENDER")
    }

}