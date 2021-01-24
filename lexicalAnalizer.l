%{ 
#include<stdio.h>
%}

delim [\t]
ws {delim}+ 
letter [A-Za-z] 
digit [0-9]
id {letter}({letter}|{digit})*
num {digit}+(\.{digit}+)?(E[+/-]?{digit}+)?

%%
ws {printf("no action");}
if|else|then {printf("%s is a keyword",yytext);}
{id} {printf("%s is a identifier",yytext);}
{num} {printf(" it is a number");}
"<" {printf("it is a relational operator less than");}
"<=" {printf("it is a relational operator less than or equal");} 
">" {printf("it is a relational operator greater than");}
">=" {printf("it is a relational operator greater than");} 
"==" {printf("it is a relational operator equal");}
"<>" {printf("it is a relational operator not equal");}
%%

int yywrap()
{
  return 1;
}
int main()
{
yylex();
return 0;
}