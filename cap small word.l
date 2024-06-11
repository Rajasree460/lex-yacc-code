%{
int c=0,s=0;
%}
%%
[A-Z]+ {c++;}
[a-z]+ {s++;}
. ; // indicates that any character (except newline) that doesn't match the previous patterns 
should be ignored.( . means accepts everything,; means do nothing . ; means accepts everything will do 
nothing(ie it wll not accept space,enter etc,it will accept reg ex matchings)
%%
int main()
{
 printf("Enter a string: ");
 yylex();
 printf("Number of capital words: %d\n", c);
 printf("Number of small words: %d\n", s);
 return 0;
}
int yywrap()
{
 return 1;
}
