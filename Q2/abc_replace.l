%{
#include <stdio.h>
%}

%%
abc   { printf("ABC"); }
[a-zA-Z]+   { printf("%s", yytext); }
.|\n { printf("%s", yytext); }

%%

int main() {
    yylex();
    return 0;
}

