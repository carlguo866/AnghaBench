
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* lexical_function ) (int) ;
typedef scalar_t__ WCHAR ;
typedef int INT ;


 scalar_t__ is_consonant (scalar_t__) ;
 scalar_t__ lex_Halant ;
 scalar_t__ lex_Nukta ;

__attribute__((used)) static inline INT find_consonant_halant(WCHAR* pwChars, INT index, INT end, lexical_function lexical)
{
    int i = 0;
    while (i + index < end - 1 && !(is_consonant(lexical(pwChars[index+i])) && (lexical(pwChars[index+i+1]) == lex_Halant || (index + i < end - 2 && lexical(pwChars[index+i+1]) == lex_Nukta && lexical(pwChars[index+i+2] == lex_Halant)))))
        i++;
    if (index + i <= end-1)
        return index + i;
    else
        return -1;
}
