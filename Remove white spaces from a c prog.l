%{
%}
%%
"//"[^\n]* ;
"/*"[^*/]*"*/" ;
[ \t]* {fprintf(yyout," ");}
[\n]* {fprintf(yyout,"\n");}
. {fprintf(yyout,"%s",yytext);}
%%
int main()
{
 extern FILE *yyin, *yyout;
yyin=fopen("input5", "r");
yyout=fopen("out5", "w");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
