%{ 
/* Definition section */
#include<stdio.h> 
#include<stdlib.h> 
int valid=1;
%} 

%token A B C 
%start S
/* Rule Section */
%% 
S: A S C  
 | T 
 | A C
 ;
T: B T C 
| B C
; 
%% 

int yyerror(char *msg) 
{ 
valid=0;
printf("invalid string\n"); 
exit(0); 
} 


//driver code 
main() 
{ 
printf("enter the string\n"); 
yyparse(); 
if(valid)
{
printf("valid string\n");
}
}