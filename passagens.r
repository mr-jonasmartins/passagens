tentativas <- c(
  "A>C", "A>C", "A>C", "B>D", "B>D", "B>D", "B>D", "B>D",
  "A>B", "A>B", "A>B", "A>B", "B>C", "B>C", "B>C", "B>C",
  "B>C", "A>D", "A>D", "A>D", "A>D", "A>D", "A>D", "A>D",
  "A>D", "A>D", "C>D", "C>D", "C>D", "C>D", "C>D", "C>D",
  "C>D", "C>D", "B>D", "B>D", "B>D", "B>D", "B>C", "B>C",
  "B>C", "A>C", "A>B", "A>B", "B>C", "B>C", "B>C", "A>C",
  "C>D", "C>D", "C>D", "C>D", "C>D", "C>D", "C>D", "B>D",
  "B>D", "B>D", "B>D", "A>B", "A>B", "A>B", "A>B", "A>B",
  "A>B", "A>B", "A>B", "A>B", "A>B", "A>B", "A>C", "A>C",
  "A>C", "A>C", "A>C", "A>C", "A>C", "A>C", "A>C", "A>C",
  "A>D", "C>D", "C>D", "C>D", "C>D", "B>D", "B>D", "B>D",
  "B>D", "B>D", "A>B", "A>B", "A>C", "A>C", "A>C", "C>D",
  "C>D", "A>B", "A>B", "A>D"
)

ab <- c()
bc <- c()
cd <- c()
poltronas <- 45

for (i in seq_along(tentativas)) {
  tentativa <- tentativas[i]

  if (tentativa == "A>B" && length(ab) < poltronas) {
    ab <- c(ab, i)
  }

  if (tentativa == "A>C" && length(ab) < poltronas && length(bc) < poltronas) {
    ab <- c(ab, i)
    bc <- c(bc, i)
  }

  if (tentativa == "A>D" && length(ab) < poltronas && length(bc) < poltronas && length(cd) < poltronas) {
    ab <- c(ab, i)
    bc <- c(bc, i)
    cd <- c(cd, i)
  }

  if (tentativa == "B>C" && length(bc) < poltronas) {
    bc <- c(bc, i)
  }

  if (tentativa == "B>D" && length(bc) < poltronas && length(cd) < poltronas) {
    bc <- c(bc, i)
    cd <- c(cd, i)
  }

  if (tentativa == "C>D" && length(cd) < poltronas) {
    cd <- c(cd, i)
  }

  if (i %in% ab || i %in% bc || i %in% cd) {
    cat(i, " - ", tentativa, " - VENDER\n", sep = " ")
  } else {
    cat(i, " - ", tentativa, " - NAO VENDER\n", sep = " ")
  }
}
