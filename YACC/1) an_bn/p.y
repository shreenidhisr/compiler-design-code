%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
S : 'a' S 'b'
   | 
   ;
%%

int main(){

printf("Enter the string:");
yyparse();
printf("the string accepted\n");
return 0;
}
   
yyerror(){

printf("invalid string\n");
exit(0);

}
