
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ token; int saved_text; } ;
typedef TYPE_1__ lex_t ;
typedef int json_error_t ;


 int STREAM_STATE_EOF ;
 int STREAM_STATE_ERROR ;
 scalar_t__ TOKEN_EOF ;
 int TOKEN_FALSE ;
 void* TOKEN_INVALID ;
 int TOKEN_NULL ;
 scalar_t__ TOKEN_STRING ;
 int TOKEN_TRUE ;
 scalar_t__ l_isalpha (int) ;
 scalar_t__ l_isdigit (int) ;
 int lex_free_string (TYPE_1__*) ;
 int lex_get (TYPE_1__*,int *) ;
 int lex_get_save (TYPE_1__*,int *) ;
 int lex_save (TYPE_1__*,int) ;
 int lex_save_cached (TYPE_1__*) ;
 scalar_t__ lex_scan_number (TYPE_1__*,int,int *) ;
 int lex_scan_string (TYPE_1__*,int *) ;
 int lex_unget_unsave (TYPE_1__*,int) ;
 int strbuffer_clear (int *) ;
 char* strbuffer_value (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int lex_scan(lex_t *lex, json_error_t *error)
{
    int c;

    strbuffer_clear(&lex->saved_text);

    if(lex->token == TOKEN_STRING)
        lex_free_string(lex);

    do
        c = lex_get(lex, error);
    while(c == ' ' || c == '\t' || c == '\n' || c == '\r');

    if(c == STREAM_STATE_EOF) {
        lex->token = TOKEN_EOF;
        goto out;
    }

    if(c == STREAM_STATE_ERROR) {
        lex->token = TOKEN_INVALID;
        goto out;
    }

    lex_save(lex, c);

    if(c == '{' || c == '}' || c == '[' || c == ']' || c == ':' || c == ',')
        lex->token = c;

    else if(c == '"')
        lex_scan_string(lex, error);

    else if(l_isdigit(c) || c == '-') {
        if(lex_scan_number(lex, c, error))
            goto out;
    }

    else if(l_isalpha(c)) {

        const char *saved_text;

        do
            c = lex_get_save(lex, error);
        while(l_isalpha(c));
        lex_unget_unsave(lex, c);

        saved_text = strbuffer_value(&lex->saved_text);

        if(strcmp(saved_text, "true") == 0)
            lex->token = TOKEN_TRUE;
        else if(strcmp(saved_text, "false") == 0)
            lex->token = TOKEN_FALSE;
        else if(strcmp(saved_text, "null") == 0)
            lex->token = TOKEN_NULL;
        else
            lex->token = TOKEN_INVALID;
    }

    else {


        lex_save_cached(lex);
        lex->token = TOKEN_INVALID;
    }

out:
    return lex->token;
}
