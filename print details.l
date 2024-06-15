%{
int f=0,i=0;
%}
%%
[0-9]+"."[0-9]+ {f++; printf("%s is a floating constant\n",yytext);}
[0-9]+ {i++; printf("%s is a int constant\n",yytext);}
. ;
%%
int main()
{
printf("enter the string: ");
yylex();
printf("no. of floats: %d\n",f);
printf("no. of ints: %d\n",i);
return 0;
}
int yywrap()
{
return 1;
}
