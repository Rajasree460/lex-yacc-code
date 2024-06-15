%{
%}
%%
[0-9]+"."[0-9]+ {printf("%s is a floating constant\n",yytext);}
[0-9]+ {printf("%s is a int constant\n",yytext);}
. ;
%%
int main()
{
printf("enter the string: ");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
