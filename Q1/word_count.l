%{
#include <stdio.h>
int word_count = 0;
int total_size = 0;
%}

%%
[a-zA-Z]+ { 
    word_count++; 
    total_size += yyleng; 
}
.|\n { /* Ignore all other characters */ }

%%

int main() {
    yylex();
    printf("Number of words: %d\n", word_count);
    printf("Total size of words: %d\n", total_size);
    return 0;
}

