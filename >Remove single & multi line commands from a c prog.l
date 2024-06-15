%{
%}
%%
"//"[^\n]* ;
"/*"[^*/]*"*/" ;
. {fprintf(yyout,"%s",yytext);}
%%
int main()
{
 extern FILE *yyin, *yyout;
yyin=fopen("input3", "r");
yyout=fopen("out3", "w");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
