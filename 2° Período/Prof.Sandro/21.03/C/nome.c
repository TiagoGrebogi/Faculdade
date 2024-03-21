#include <stdio.h>

int main() {
    char firstName [5] = {'T', 'i', 'a', 'g', 'o'};
    char secondName [8] = {' ','G', 'r', 'e', 'b', 'o', 'g', 'i'};

    printf("Meu nome é: %c%c%c%c%c", firstName[0], firstName[1], firstName[2], firstName[3], firstName[4]);
    printf("%c%c%c%c%c%c%c%c\n", secondName[0], secondName[1], secondName[2], secondName[3], secondName[4], secondName[5], secondName[6], secondName[7]);

    return 0;
}