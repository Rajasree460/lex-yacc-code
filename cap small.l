%{
int c=0,s=0;
%}
%%
[A-Z] {c++;}
[a-z] {s++;}
%%
int main()
{
printf("enter string:");
yylex();
printf("no. of vowels: %d\n",c);
printf("no. of consonants: %d\n",s);
return 0;
}
int yywrap()
{
return 1;
}
