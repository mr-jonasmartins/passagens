#include <stdio.h>
#include <string.h>

int include(int val, int arr[], int tam);

int main(void) {

    char *tentativas[100] = {"A>C","A>C","A>C","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","B>C","B>C","B>C","B>C","B>C","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","A>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>C","B>C","B>C","A>C","A>B","A>B","B>C","B>C","B>C","A>C","C>D","C>D","C>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>B","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>C","A>D","C>D","C>D","C>D","C>D","B>D","B>D","B>D","B>D","B>D","A>B","A>B","A>C","A>C","A>C","C>D","C>D","A>B","A>B","A>D"};

    int ab[45];
    int bc[45]; 
    int cd[45];
    int poltronas = 5;
    int count = 0;
    int ab_tamanho = 0;
    int bc_tamanho = 0;
    int cd_tamanho = 0;

    for(int i = 0 ; i < 100 ; i++) {

        count = count + 1;

        if (strcmp("A>B", tentativas[i]) == 0 && ab_tamanho < poltronas ) {
            ab[count] = count;
            ab_tamanho = ab_tamanho + 1;
        }

        if (strcmp("A>C", tentativas[i]) == 0 && ab_tamanho < poltronas && bc_tamanho < poltronas) {
            ab[count] = count;
            ab_tamanho = ab_tamanho + 1;
            bc[count] = count;
            bc_tamanho = bc_tamanho + 1;
        }

        if (strcmp("A>D", tentativas[i]) == 0 && ab_tamanho < poltronas && bc_tamanho < poltronas && cd_tamanho < poltronas) {
            ab[count] = count;
            ab_tamanho = ab_tamanho + 1;
            bc[count] = count;
            bc_tamanho = bc_tamanho + 1;
            cd[count] = count;
            cd_tamanho = cd_tamanho + 1;
        }

        if (strcmp("B>C", tentativas[i]) == 0 && bc_tamanho < poltronas) {
            bc[count] = count;
            bc_tamanho = bc_tamanho + 1;
        }

        if (strcmp("B>D", tentativas[i]) == 0 && bc_tamanho < poltronas && cd_tamanho < poltronas) {
            bc[count] = count;
            bc_tamanho = bc_tamanho + 1;
            cd[count] = count;
            cd_tamanho = cd_tamanho + 1;
        }

        if (strcmp("C>D", tentativas[i]) == 0 && cd_tamanho < poltronas) {
            cd[count] = count;
            cd_tamanho = cd_tamanho + 1;
        }

        if (include(count, ab, ab_tamanho)) {
              printf("ok");
          }

    }

}

int include(int val, int arr[], int tam) {
    int i;
    for(i = 0; i < tam; i++)
    {
        if(arr[i] == val)
            return 1;
    }
    return 0;
}