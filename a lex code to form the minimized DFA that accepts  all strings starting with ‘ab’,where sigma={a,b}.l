%s A B C
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN C;
<INITIAL>\n BEGIN INITIAL; printf("\n not accepted\n");
<A>a BEGIN C;
<A>b BEGIN B;
<A>\n BEGIN INITIAL; printf("\n not accepted\n");
<B>a BEGIN B;
<B>b BEGIN B;
<B>\n BEGIN INITIAL; printf("\n accepted\n");
<C>a BEGIN C;
<C>b BEGIN C;
<C>\n BEGIN INITIAL; printf("\n not accepted\n");
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
