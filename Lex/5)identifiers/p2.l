%{#include<stdio.h>
int count=0;
char ch=0;
%}
digit[0-9]
letter[a-zA-Z_]

%%
{letter}({letter}|{digit})* {
 count++;
}

"int"|"flot"|"double"|"char" {ch++;}

%%
int main()
{
 yyin=fopen("c.c","r+");
 yylex();
 printf("number of identifiers: %d",count);
 printf("number of keywords: %d",ch);
 return 0;
} 
