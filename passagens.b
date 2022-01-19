var tentativas = ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"]

var ab = [], bc = [], cd = [], poltronas = 45, i = 0

for tentativa in tentativas {

    i++

    if (tentativa == "A>B" and ab.length() < poltronas) {
        ab.append(i)
    }

    if (tentativa == "A>C" and ab.length() < poltronas and bc.length() < poltronas) {
        ab.append(i)
        bc.append(i)
    }

    if (tentativa == "A>D" and ab.length() < poltronas and bc.length() < poltronas and cd.length() < poltronas) {
        ab.append(i)
        bc.append(i)
        cd.append(i)
    }

    if (tentativa == "B>C" and bc.length() < poltronas) {
        bc.append(i)
    }
  
    if (tentativa == "B>D" and bc.length() < poltronas and cd.length() < poltronas) {
        bc.append(i)
        cd.append(i)
    }
  
    if (tentativa == "C>D" and cd.length() < poltronas) {
        cd.append(i)
    }

    if (ab.contains(i) or bc.contains(i) or cd.contains(i)) {
        echo '${i} - ${tentativa} - VENDER'
    } else {
        echo '${i} - ${tentativa} - NAO VENDER'
    }

}