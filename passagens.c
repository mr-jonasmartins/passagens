#include <stdio.h>
#include <string.h>

int main() {

    char *tentativas[] = {"A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D",
                          "A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C",
                          "B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B",
                          "A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C",
                          "A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"};

    int ab_tamanho = 0, bc_tamanho = 0, cd_tamanho = 0, poltronas = 45;

    int tentativas_tamanho = sizeof(tentativas) / sizeof(tentativas[0]);

    for( int i=0; i < tentativas_tamanho; i++ ) {
    
        if (strcmp("A>B", tentativas[i]) == 0 && ab_tamanho < poltronas) {
            ab_tamanho = ab_tamanho + 1;
            printf("%d - %s - VENDER \n", i+1, tentativas[i]);
        }

        else if (strcmp("A>C", tentativas[i]) == 0 && ab_tamanho < poltronas && bc_tamanho < poltronas) {
            ab_tamanho = ab_tamanho + 1;
            bc_tamanho = bc_tamanho + 1;
            printf("%d - %s - VENDER \n", i+1, tentativas[i]);
        }

        else if (strcmp("A>C", tentativas[i]) == 0 && ab_tamanho < poltronas && bc_tamanho < poltronas) {
            ab_tamanho = ab_tamanho + 1;
            bc_tamanho = bc_tamanho + 1;
            printf("%d - %s - VENDER \n", i+1, tentativas[i]);
        }

        else if (strcmp("A>D", tentativas[i]) == 0 && ab_tamanho < poltronas && bc_tamanho < poltronas && cd_tamanho < poltronas) {
            ab_tamanho = ab_tamanho + 1;
            bc_tamanho = bc_tamanho + 1;
            cd_tamanho = cd_tamanho + 1;
            printf("%d - %s - VENDER \n", i+1, tentativas[i]);
        }

        else if (strcmp("B>C", tentativas[i]) == 0 && bc_tamanho < poltronas) {
            bc_tamanho = bc_tamanho + 1;
            printf("%d - %s - VENDER \n", i+1, tentativas[i]);
        }

        else if (strcmp("B>D", tentativas[i]) == 0 && bc_tamanho < poltronas && cd_tamanho < poltronas) {
            bc_tamanho = bc_tamanho + 1;
            cd_tamanho = cd_tamanho + 1;
            printf("%d - %s - VENDER \n", i+1, tentativas[i]);
        }

        else if (strcmp("C>D", tentativas[i]) == 0 && cd_tamanho < poltronas) {
            cd_tamanho = cd_tamanho + 1;
            printf("%d - %s - VENDER \n", i+1, tentativas[i]);
        }     

        else {
            printf("%d - %s - NAO VENDER \n", i+1, tentativas[i]);
        }  

    }

}