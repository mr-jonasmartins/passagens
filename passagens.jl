tentativas = ["A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"]

ab = []
bc = []
cd = []
poltronas = 45
i = 0

for tentativa in tentativas

    global i
    global poltronas
    global ab
    global bc
    global cd

    i = i + 1

	if tentativa == "A>B" && length(ab) < poltronas 
        push!(ab,i)
    end

	if tentativa == "A>C" && length(ab) < poltronas && length(bc) < poltronas
		push!(ab,i)
		push!(bc,i)
    end

	if tentativa == "A>D" && length(ab) < poltronas && length(bc) < poltronas && length(cd) < poltronas
		push!(ab,i) 
		push!(bc,i)
		push!(cd,i)
    end

	if tentativa == "B>C" && length(bc) < poltronas
		push!(bc,i)
    end

	if tentativa == "B>D" && length(bc) < poltronas && length(cd) < poltronas
		push!(bc,i)
		push!(cd,i)
    end

	if tentativa == "C>D" && length(cd) < poltronas
		push!(cd,i)
    end

    if i in ab || i in bc || i in cd
        println(i , " - ", tentativa , " - VENDER")
    else
        println(i , " - ", tentativa , " - NAO VENDER")
    end

end