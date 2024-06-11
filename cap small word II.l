%{
int c=0,s=0;
%}
%%
[A-Z+]+[^a-z] {c++;}
[a-z]+[^A-Z] {s++;}
. ; 
%%
int main()
{
printf("enter string- ");
yylex();
printf("no. of caps: %d \n",c);
printf("no. of smalls: %d \n",s);
return 0;
}
int yywrap()
{
return 1;
}
