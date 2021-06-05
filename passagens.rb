tentativas = ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"]

ab, bc, cd, poltronas, i = [], [], [], 45, 0

for tentativa in tentativas 
   
    i = i + 1

    if tentativa == "A>B" && ab.length() < poltronas 
      ab.push(i)
    end

    if tentativa == "A>C" && ab.length() < poltronas && bc.length() < poltronas
      ab.push(i)
      bc.push(i)
    end
  
    if tentativa == "A>D" && ab.length() < poltronas && bc.length() < poltronas && cd.length() < poltronas
      ab.push(i)
      bc.push(i)
      cd.push(i)
    end
  
    if tentativa == "B>C" && bc.length() < poltronas
      bc.push(i)
    end
  
    if tentativa == "B>D" && bc.length() < poltronas && cd.length() < poltronas
      bc.push(i)
      cd.push(i)
    end
  
    if tentativa == "C>D" && cd.length() < poltronas
      cd.push(i)
    end

    if ab.include?(i) || bc.include?(i) || cd.include?(i) 
      puts "#{i} - #{tentativa} - VENDER"
    else
      puts "#{i} - #{tentativa} - NAO VENDER"
    end

end