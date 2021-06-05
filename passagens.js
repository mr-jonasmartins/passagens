var tentativas = ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"]

var ab = [], bc = [], cd = [], poltronas = 45, i = 0

for (tentativa of tentativas) {

	i = i + 1

	if (tentativa == "A>B" && ab.length < poltronas) { 
		ab.push(i)
	}

	if (tentativa == "A>C" && ab.length < poltronas && bc.length < poltronas) {
		ab.push(i)
		bc.push(i)
	}

	if (tentativa == "A>D" && ab.length < poltronas && bc.length < poltronas && cd.length < poltronas) {
		ab.push(i)
		bc.push(i)
		cd.push(i)
	}

	if (tentativa == "B>C" && bc.length < poltronas) {
		bc.push(i)
	}

	if (tentativa == "B>D" && bc.length < poltronas && cd.length < poltronas) {
		bc.push(i)
		cd.push(i)
	}

	if (tentativa == "C>D" && cd.length < poltronas) {
		cd.push(i)
	}

	// if ( ab.indexOf(i) != -1 || bc.indexOf(i) != -1 || cd.indexOf(i) != -1  ) {
	if (ab.includes(i) || bc.includes(i) || cd.includes(i) ) {
		console.log (i + " - " + tentativa + " - VENDER")
	} else {
		console.log (i + " - " + tentativa + " - NAO VENDER")
	}

}