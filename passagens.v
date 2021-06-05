fn main() {
    tentativas := ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"]

    mut ab := []int{}
    mut bc := []int{}
    mut cd := []int{}
    poltronas := 45
    mut i := 0

    for tentativa in tentativas {

        i = i + 1

        if tentativa == "A>B" && ab.len < poltronas {
            ab << i
        }

        if tentativa == "A>C" && ab.len < poltronas && bc.len < poltronas {
            ab << i
            bc << i
        }

        if tentativa == "A>D" && ab.len < poltronas && bc.len < poltronas && cd.len < poltronas {
            ab << i
            bc << i
            cd << i
        }

        if tentativa == "B>C" && bc.len < poltronas {
            bc << i
        }

        if tentativa == "B>D" && bc.len < poltronas && cd.len < poltronas {
            bc << i
            cd << i
        }

        if tentativa == "C>D" && cd.len < poltronas {
            cd << i
        }

        if i in ab || i in bc || i in cd {
            println("$i - $tentativa - VENDER")
        } else {
            println("$i - $tentativa - NAO VENDER")
        }
        
    }

}