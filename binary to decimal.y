%{
int yylex();
#include<stdlib.h>
void yyerror(char *);
%}
%name parse
%token NUM
%left '+'
%left '*'
%%
S : S N '\n' {$$=$2; printf("result:%d\n",$$);}
 |{}
N : L {$$=$1;}
L : L B {$$=$1*2+$2;}
 |B {$$=$1;} 
B : NUM {$$=$1;} 
 ;
%%
int main(){
yyparse();
}
void yyerror(char *msg){
printf("arithmetic error\n");
}
