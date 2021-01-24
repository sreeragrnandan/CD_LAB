%{
	#include <stdio.h>
	#include <stdlib.h>
	int yylex(void);
	void yyerror(char *);
%}

%token DIGIT ID

%left '+' '-'
%left '*' '/'

%%
stmt :	ID '=' exp  {printf("Valid Expression\n");}
	;
exp :	exp '+' exp
	|	exp '-' exp
	|	exp '*'	exp
	|	exp '/' exp
	|	'(' exp ')'
	|	DIGIT
	|	ID
	;
%%

void yyerror(char *s){
	printf("Invalid Expression\n");
	
}

int main(void){
	while(1)
		yyparse();
	return 0;
}