%{
int v=0,c=0;
%}
%%
[aeiouAEIOU] {v++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {c++;}
%%
int main()
{
printf("enter string-");
yylex();
printf("no. of vowels: %d\n",v);
printf("no. of consonants: %d\n",c);
return 0;
}
int yywrap()
{
return 1;
}
