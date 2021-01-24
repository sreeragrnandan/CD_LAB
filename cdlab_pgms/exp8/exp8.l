%{ 
/* Definition section */
#include "exp8.tab.h" 
%} 

/* Rule Section */
%% 
[aA] {return A;} 
[bB] {return B;} 
[cC] {return C;}
\n {return 0;} 
. {return yytext[0];} 
%% 

int yywrap() 
{ 
return 1; 
}