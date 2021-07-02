fn main() {
    let tentativas = ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"];

    let mut ab: Vec<i32> = vec![];
    let mut bc: Vec<i32> = vec![];
    let mut cd: Vec<i32> = vec![];
    let poltronas = 45;
    let mut i = 0;
    
    for tentativa in tentativas.iter() {

        i = i + 1;
        
        if tentativa.to_string() == "A>B" && ab.len() < poltronas {
            ab.push(i);
        }

        if tentativa.to_string() == "A>C" && ab.len() < poltronas && bc.len() < poltronas {
            ab.push(i);
            bc.push(i);
        }

        if tentativa.to_string() == "A>D" && ab.len() < poltronas && bc.len() < poltronas && cd.len() < poltronas {
            ab.push(i);
            bc.push(i);
            cd.push(i);
        }
        
        if tentativa.to_string() == "B>C" && bc.len() < poltronas {
            bc.push(i);
        }

        if tentativa.to_string() == "B>D" && bc.len() < poltronas && cd.len() < poltronas {
            bc.push(i);
            cd.push(i);
        }

        if tentativa.to_string() == "C>D" && cd.len() < poltronas {
            cd.push(i);
        }

        if ab.contains(&i) || bc.contains(&i) || cd.contains(&i) {
            println!("{} - {} - VENDER", i, tentativa);
        } else {
            println!("{} - {} - NAO VENDER", i, tentativa);
        }
        
    }
}
