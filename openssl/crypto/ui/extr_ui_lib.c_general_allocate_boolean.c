
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef enum UI_string_types { ____Placeholder_UI_string_types } UI_string_types ;
struct TYPE_11__ {char const* action_desc; char const* ok_chars; char const* cancel_chars; } ;
struct TYPE_12__ {TYPE_1__ boolean_data; } ;
struct TYPE_13__ {TYPE_2__ _; } ;
typedef TYPE_3__ UI_STRING ;
struct TYPE_14__ {int strings; } ;
typedef TYPE_4__ UI ;


 int ERR_R_PASSED_NULL_PARAMETER ;
 int UI_F_GENERAL_ALLOCATE_BOOLEAN ;
 int UI_R_COMMON_OK_AND_CANCEL_CHARACTERS ;
 int UIerr (int ,int ) ;
 scalar_t__ allocate_string_stack (TYPE_4__*) ;
 int free_string (TYPE_3__*) ;
 TYPE_3__* general_allocate_prompt (TYPE_4__*,char const*,int,int,int,char*) ;
 int sk_UI_STRING_push (int ,TYPE_3__*) ;
 int * strchr (char const*,char const) ;

__attribute__((used)) static int general_allocate_boolean(UI *ui,
                                    const char *prompt,
                                    const char *action_desc,
                                    const char *ok_chars,
                                    const char *cancel_chars,
                                    int prompt_freeable,
                                    enum UI_string_types type,
                                    int input_flags, char *result_buf)
{
    int ret = -1;
    UI_STRING *s;
    const char *p;

    if (ok_chars == ((void*)0)) {
        UIerr(UI_F_GENERAL_ALLOCATE_BOOLEAN, ERR_R_PASSED_NULL_PARAMETER);
    } else if (cancel_chars == ((void*)0)) {
        UIerr(UI_F_GENERAL_ALLOCATE_BOOLEAN, ERR_R_PASSED_NULL_PARAMETER);
    } else {
        for (p = ok_chars; *p != '\0'; p++) {
            if (strchr(cancel_chars, *p) != ((void*)0)) {
                UIerr(UI_F_GENERAL_ALLOCATE_BOOLEAN,
                      UI_R_COMMON_OK_AND_CANCEL_CHARACTERS);
            }
        }

        s = general_allocate_prompt(ui, prompt, prompt_freeable,
                                    type, input_flags, result_buf);

        if (s != ((void*)0)) {
            if (allocate_string_stack(ui) >= 0) {
                s->_.boolean_data.action_desc = action_desc;
                s->_.boolean_data.ok_chars = ok_chars;
                s->_.boolean_data.cancel_chars = cancel_chars;
                ret = sk_UI_STRING_push(ui->strings, s);



                if (ret <= 0) {
                    ret--;
                    free_string(s);
                }
            } else
                free_string(s);
        }
    }
    return ret;
}
