
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tree {int dummy; } ;
struct TYPE_6__ {int flags; int len; int text; } ;
struct TYPE_4__ {scalar_t__ type; int flags; int len; int ptr; } ;
struct TYPE_5__ {TYPE_1__ lex; } ;


 int PARSE_FAIL ;
 int PARSE_INIT (int ) ;
 int PARSE_OK ;
 TYPE_3__* T ;
 scalar_t__ lex_uc_ident ;
 TYPE_2__ parse ;
 int parse_error (char*) ;
 int parse_lex () ;
 int type_boxed_type_ident ;

struct tree *parse_boxed_type_ident (void) {
  PARSE_INIT (type_boxed_type_ident);
  if (parse.lex.type != lex_uc_ident) {
    parse_error ("Can not parse boxed type");
    PARSE_FAIL;
  } else {
    T->text = parse.lex.ptr;
    T->len = parse.lex.len;
    T->flags = parse.lex.flags;
    parse_lex ();
    PARSE_OK;
  }
}
