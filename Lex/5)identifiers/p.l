%{
    #include <stdio.h>
    int key=0;
    int ids=0;
    int op=0;
%}

/* defining macros*/
types ("int"|"float"|"char"|"double")
alpha [a-zA-Z_]
alnum [a-zA-Z0-9]



%%
int|double|char|float {key++;}

[+-/*=%]  {op++;}

{types}[ ]+{alpha}{alnum}*[;]  { ids++; }

{types}[ ]+({alpha}{alnum}*[,][ ]*)+{alpha}{alnum}*[;] {
        
    int i=0;
    while (yytext[i] != '\0') {
        if (yytext[i] == ',' || yytext[i] == ';') ids++;
        i++;
    }
}

.|\n { }
%%

int main(int argc, char* argv[]) {
    if (argc < 2) {
        printf("Usage: ./run input\n");
        return 1;
    }

    yyin = fopen(argv[1], "r");
    yylex();

    printf("\nNo.of identifiers: %d\n", ids);
    printf("\nNo.of keywords: %d\n", key);
    printf("\nNo.of operators: %d\n", op);
}

int yywrap() { return 1; }

