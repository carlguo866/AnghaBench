
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SubsdelayGetWordRank (int) ;

__attribute__((used)) static int SubsdelayGetTextRank( char *psz_text )
{
    bool b_skip_esc;
    bool b_skip_tag;
    char c;

    int i, i_word_length, i_rank;

    i = 0;
    i_word_length = 0;
    i_rank = 0;

    b_skip_esc = 0;
    b_skip_tag = 0;

    while ( psz_text[i] != '\0' )
    {
        c = psz_text[i];
        i++;

        if( c == '\\' && !b_skip_esc )
        {
            b_skip_esc = 1;
            continue;
        }

        if( psz_text[i] == '<' )
        {
            b_skip_tag = 1;
            continue;
        }

        if( !b_skip_esc && !b_skip_tag )
        {
            if( c == ' ' || c == ',' || c == '.' || c == '-' || c == '?' || c == '!' )
            {
                if( i_word_length > 0 )
                {
                    i_rank += SubsdelayGetWordRank( i_word_length );
                }

                i_word_length = 0;
            }
            else
            {
                i_word_length++;
            }
        }

        b_skip_esc = 0;

        if( c == '>' )
        {
            b_skip_tag = 0;
        }

    }

    if( i_word_length > 0 )
    {
        i_rank += SubsdelayGetWordRank( i_word_length );
    }

    return i_rank;
}
