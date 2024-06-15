%s A B
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN INITIAL;
<INITIAL>\n BEGIN INITIAL; printf("\n not accepted\n");
<A>a BEGIN A;
<A>b BEGIN B;
<A>\n BEGIN INITIAL; printf("\n not accepted\n");
<B>a BEGIN B;
<B>b BEGIN B;
<B>\n BEGIN INITIAL; printf("\n accepted\n");
. ;
%%
int main()
{
 printf("enter string using {a,b} - ");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
