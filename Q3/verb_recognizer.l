%{
#include <stdio.h>
%}

%%
is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|have|had|go {
    printf("Verb recognized: %s\n", yytext);
}
.|\n { /* Ignore other characters */ }

%%

int main() {
    yylex();
    return 0;
}

