%{

#include<stdio.h>

%}

%%

"//"([a-z]|[0-9]|[A-Z]|"")* {}

"/*"([a-z]|[0-9]|[A-Z]|" """\n)+"*/" {}

%%

main()

{

yylex();

return 0;

}

int yywrap()

{

}