%{
#include<stdio.h>
#include "y.tab.h"
//int yylval;
%}
%%
[0-1] {yylval=yytext[0]-'0'; return NUM;}
[*+\n] return *yytext;
. ;
%%
int yywrap(){
return 1;
}
