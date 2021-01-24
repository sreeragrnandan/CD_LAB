%{ 
   /* Definition section */
  #include<stdio.h> 
  #include<stdlib.h> 
%} 
  
%token A B NL 
  
/* Rule Section */
%% 
stmt: S B NL {printf("valid string\n"); 
             } 
; 
S: S A 
| 
; 
%% 
  
int yyerror(char *msg) 
 { 
  printf("invalid string\n"); 
  
 } 
  
  

main() 
 { 
  printf("enter the string\n"); 
  yyparse(); 
 } 