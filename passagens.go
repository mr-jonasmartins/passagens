package main

import (
	"fmt"
)

func include(arr []int, num int) bool {
	for _, v := range arr {
		if v == num {
			return true
		}
	}

	return false
}

func main() {

	tentativas := [...]string{"A>C", "A>C", "A>C", "B>D", "B>D", "B>D", "B>D", "B>D", "A>B", "A>B", "A>B", "A>B", "B>C", "B>C", "B>C", "B>C", "B>C", "A>D", "A>D", "A>D", "A>D", "A>D", "A>D", "A>D", "A>D", "A>D", "C>D", "C>D", "C>D", "C>D", "C>D", "C>D", "C>D", "C>D", "B>D", "B>D", "B>D", "B>D", "B>C", "B>C", "B>C", "A>C", "A>B", "A>B", "B>C", "B>C", "B>C", "A>C", "C>D", "C>D", "C>D", "C>D", "C>D", "C>D", "C>D", "B>D", "B>D", "B>D", "B>D", "A>B", "A>B", "A>B", "A>B", "A>B", "A>B", "A>B", "A>B", "A>B", "A>B", "A>B", "A>C", "A>C", "A>C", "A>C", "A>C", "A>C", "A>C", "A>C", "A>C", "A>C", "A>D", "C>D", "C>D", "C>D", "C>D", "B>D", "B>D", "B>D", "B>D", "B>D", "A>B", "A>B", "A>C", "A>C", "A>C", "C>D", "C>D", "A>B", "A>B", "A>D"}

	poltronas := 45

	ab := []int{}
	bc := []int{}
	cd := []int{}

	for i, tentativa := range tentativas {

		i = i + 1

		if tentativa == "A>B" && len(ab) < poltronas {
			ab = append(ab, i)
		}
		if tentativa == "A>C" && len(ab) < poltronas && len(bc) < poltronas {
			ab = append(ab, i)
			bc = append(bc, i)
		}

		if tentativa == "A>D" && len(ab) < poltronas && len(bc) < poltronas && len(cd) < poltronas {
			ab = append(ab, i)
			bc = append(bc, i)
			cd = append(cd, i)
		}

		if tentativa == "B>C" && len(bc) < poltronas {
			bc = append(bc, i)
		}

		if tentativa == "B>D" && len(bc) < poltronas && len(cd) < poltronas {
			bc = append(bc, i)
			cd = append(cd, i)
		}

		if tentativa == "C>D" && len(cd) < poltronas {
			cd = append(cd, i)
		}

		if include(ab, i) || include(bc, i) || include(cd, i) {
			fmt.Printf("%d - %s - VENDER\n", i, tentativa)
		} else {
			fmt.Printf("%d - %s - NAO VENDER\n", i, tentativa)
		}

	}

}