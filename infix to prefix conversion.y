%{
int yylex();
#include<stdio.h>
void yyerror(char *);
%}
%name parse
%token NUM
%left '+'
%left '*'
%%
S : S E '\n' {$$=$2; printf("\n");}
   |{}
E : E '+' E {printf("+%d", $1);}
   |E '' E {printf("%d%d", $1, $3);}
   |NUM {$$ = $1;}
   ;
%%
int main(){
yyparse();
}
void yyerror(char *msg){
printf ("error in arithmetic");
}
 
