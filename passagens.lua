tentativas = {"A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"}

ab, bc, cd, poltronas = {}, {}, {}, 45

function include(tbl, item)
    for key, value in ipairs(tbl) do
        if value == item then return true end
    end
    return false
end

for i, tentativa in pairs(tentativas) do

    if tentativa == "A>B" and #ab < poltronas then
        table.insert(ab, i)
    end

	if tentativa == "A>C" and #ab < poltronas and #bc <  poltronas then
		table.insert(ab,i)
		table.insert(bc,i)    
    end

    if tentativa == "A>D" and #ab < poltronas and #bc< poltronas and #cd <  poltronas then
		table.insert(ab,i) 
		table.insert(bc,i)
		table.insert(cd,i)
    end

	if tentativa == "B>C" and #bc <  poltronas then
		table.insert(bc,i)
    end

	if tentativa == "B>D" and #bc < poltronas and #cd <  poltronas then
		table.insert(bc,i)
		table.insert(cd,i)
    end
    
	if tentativa == "C>D" and #cd <  poltronas then
		table.insert(cd,i)
    end

	if include(ab,i) or include(bc,i) or include(cd,i) then
		print (i , " - ", tentativa , " - VENDER")
	else
		print (i , " - ", tentativa , " - NAO VENDER")
	end

end