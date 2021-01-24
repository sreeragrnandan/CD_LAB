%{
#include<stdio.h>
int single=0;
int multi=0; 
	
%} 
start \/\*

end  \*\/
%% 
[ \t]+ {fprintf(yyout, "");}
"//".*\n            { ++single; }
"/*"[^*/]*"*/"      { ++multi; }
%% 

int yywrap(){} 

int main() 
{ 
	extern FILE *yyin, *yyout; 
	yyin = fopen("Input.txt", "r"); 
	yyout = fopen("Output.txt", "w"); 
	yylex(); 
	return 0; 
} 
