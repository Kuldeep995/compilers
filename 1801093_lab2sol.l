%{
   #include<stdio.h> 
%}

%%
 
[\t ]+ 
"#"   {  printf("Token and Lexeme: #\n");  }
")"   {  printf("Token and Lexeme: )\n");  }
"("   {  printf("Token and Lexeme: (\n");  }
\n    {  printf("Token and Lexeme: <newline>\n");  }
[a-z]+   {  printf("Token: STRING; Lexeme: %s\n", yytext);  }
"Reverse"   {  printf("Token: REVERSE; Lexeme: Reverse\n");  }

%%

int yywrap(){}
int main()
{
  printf("\n");
  yylex();
  return 0;
}



