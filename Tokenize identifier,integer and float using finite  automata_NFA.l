%s A B C D E
%%
<INITIAL>[0-9] BEGIN A;
<A>[0-9] BEGIN A;
<A>\n BEGIN INITIAL; printf("\n int\n");
<INITIAL>\n BEGIN INITIAL; printf("\n invalid token\n");
<INITIAL>[0-9] BEGIN B;
<B>[0-9] BEGIN B;
<B>. BEGIN C;
<C>[0-9] BEGIN D;
<D>[0-9] BEGIN D;
<D>\n BEGIN INITIAL; printf("\n float\n");
<C>\n BEGIN INITIAL; printf("\n invalid token\n");
<INITIAL>[a-zA-Z] BEGIN E;
<E>[a-zA-Z0-9_] BEGIN E;
<E>\n BEGIN INITIAL; printf("\n identifier\n");
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
