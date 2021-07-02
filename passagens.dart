void main() {
  
  var tentativas = ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"];

  var ab = [];
  var bc = [];
  var cd = [];
  var poltronas = 45;
  var i = 0;

  for (var tentativa in tentativas) {

    i = i + 1;

    if (tentativa == "A>B" && ab.length < poltronas) {
      ab.add(i);
    }

    if (tentativa == "A>C" && ab.length < poltronas && bc.length < poltronas) {
      ab.add(i);
      bc.add(i);
    }

    if (tentativa == "A>D" && ab.length < poltronas && bc.length < poltronas && cd.length < poltronas) {
      ab.add(i);
      bc.add(i);
      cd.add(i);
    }

    if (tentativa == "B>C" && bc.length < poltronas) {
      bc.add(i);
    }

    if (tentativa == "B>D" && bc.length < poltronas && cd.length < poltronas) {
      bc.add(i);
      cd.add(i);
    }

    if (tentativa == "C>D" && cd.length < poltronas) {
      cd.add(i);
    }
    
    if (ab.contains(i) || bc.contains(i) || cd.contains(i)) {
      print("$i - $tentativa - VENDER");
    } else {
      print("$i - $tentativa - NAO VENDER");
    }
    
  }
  
}