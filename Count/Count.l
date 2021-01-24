%{
#include<stdio.h>
int s_letters=0,c_letters=0, num=0, spl_char=0;
%} 
 
%%
[A-Z] c_letters++;
[a-z] s_letters++;
[0-9] num++;
. spl_char++;
%%

void main()
{
yyin= fopen("file.txt","r");
yylex();
printf("No.of small letters=%d", s_letters);
printf("\nNo.of capital letters=%d",c_letters);
printf("\nNo.of digits=%d", num);
printf("\nNo.of special chars=%d",spl_char);
}
 
int yywrap()
{
return(1);
} 