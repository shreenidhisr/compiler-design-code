%{
    #include <stdio.h>
    int vowels=0, consonants=0;
%}
%%

[aeiouAEIOU]     { vowels++; }
[a-zA-Z]         { consonants++; }
.|\n             return 0;

%%

int main() {
    printf("Enter String\n");
    yylex();
    printf("\nVowels: %d\nConsonants: %d\n", vowels, consonants);
}
