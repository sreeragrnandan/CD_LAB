%{
	#include<stdio.h>
%}

%%

[0|1]*  {int i,zc,oc,ch;
	 zc=oc=0;
	  for(i=0;i<yyleng;i++)
	  {
		
		ch = yytext[i]-48; 
		if(ch==0)
			zc=zc+1;
		else if(ch==1)
			oc=oc+1;
	  }
	  //printf("Zero : %d , One : %d\n",zc,oc);
	  if(oc%2==0 && zc%2==0)
		printf("Valid String\n");
	  else
		printf("Invalid String\n");
	}

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