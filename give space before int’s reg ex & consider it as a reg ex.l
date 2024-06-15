%{
int i=0;
%}
%%
[][0-9]+ {i++;}
. ;
%%
int main()
{
printf("enter the string: ");
yylex();
//printf("no. of floats: %d\n",f);
printf("no. of ints: %d\n",i);
return 0;
}
int yywrap()
{
return 1;
}
