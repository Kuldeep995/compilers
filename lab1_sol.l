%{
	#include<stdio.h> 
	int b=0,w=0,c=0, bl=0, f=0, lc=0, f1=0;

%}
start \/\* 
end  \*\/ 
%%
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/]   {++c; f=1; }
[A-Za-z0-9]+   {++w; f=1; f1=1;}

[{(\[)\]}]     {++b; f=1; f1=1;}
\n             { if(f==0)++bl; if(f1==1)lc++; f1=0; f=0;}
.                 ;
%%
int yywrap(void){return 1;} 
  
int main() 
{    
     extern FILE* yyin; 
    yyin = fopen("input.txt", "r"); 
    yylex(); 
    printf("Braces:%d\tWords:%d\tComments:%d\tBlank Lines:%d\tLines of code:%d\t",b,w,c, bl, lc);
    printf("\n");
    return 0; 
} 
