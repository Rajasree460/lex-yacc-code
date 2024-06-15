%{
int v=0,c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int main()
{
printf("Enter the string:");
yylex();
printf("Number of vowels are: %d\n", v);
printf("Number of consonants are: %d\n", c);
return 0;
} 
int yywrap()
{
return 1;
}
