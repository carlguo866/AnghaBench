
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct shader_var {int array_count; } ;
struct TYPE_7__ {TYPE_2__* cur_token; } ;
struct shader_parser {TYPE_3__ cfp; } ;
struct TYPE_5__ {int array; int len; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ str; } ;


 scalar_t__ CFTOKEN_NUM ;
 scalar_t__ PARSE_EOF ;
 scalar_t__ cf_next_token_should_be (TYPE_3__*,char*,char*,int *) ;
 int cf_next_valid_token (TYPE_3__*) ;
 scalar_t__ strtol (int ,int *,int) ;
 int valid_int_str (int ,int ) ;

__attribute__((used)) static bool sp_parse_param_array(struct shader_parser *sp,
     struct shader_var *param)
{
 if (!cf_next_valid_token(&sp->cfp))
  return 0;

 if (sp->cfp.cur_token->type != CFTOKEN_NUM ||
     !valid_int_str(sp->cfp.cur_token->str.array,
      sp->cfp.cur_token->str.len))
  return 0;

 param->array_count =
  (int)strtol(sp->cfp.cur_token->str.array, ((void*)0), 10);

 if (cf_next_token_should_be(&sp->cfp, "]", ";", ((void*)0)) == PARSE_EOF)
  return 0;

 if (!cf_next_valid_token(&sp->cfp))
  return 0;

 return 1;
}
