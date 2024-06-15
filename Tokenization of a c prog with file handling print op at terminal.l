%{
%}
%%
[0-9]+"."[0-9]+ {printf("%s is a floating constant\n",yytext);}
[0-9]+ {printf("%s is a int constant\n",yytext);}
"if"|"else"|"do"|"while" {printf("%s is a keywoard\n",yytext);}
[A-Za-z][A-Za-z0-9_]* {printf("%s is an identifier\n",yytext);}
"++"|">=" {printf("%s is a multioperator\n",yytext);}
[=-] {printf("%s is an operator\n",yytext);}
[(){};] {printf("%s is a seperator\n",yytext);}
. ;
%%
int main()
{
 extern FILE *yyin;
yyin=fopen("input", "r");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
