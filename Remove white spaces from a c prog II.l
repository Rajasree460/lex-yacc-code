%{
%}
%%
"//"[^\n]* ;
"/*"[^*/]*"*/" ;
[ \t]* {fprintf(yyout," ");}
[\n]* ;
. {fprintf(yyout,"%s",yytext);}
%%
int main()
{
 extern FILE *yyin, *yyout;
yyin=fopen("input4", "r");
yyout=fopen("out4", "w");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
