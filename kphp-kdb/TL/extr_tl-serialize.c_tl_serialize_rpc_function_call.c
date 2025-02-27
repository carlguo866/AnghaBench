
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * cdr; } ;
struct TYPE_6__ {TYPE_1__ p; } ;
struct tl_scheme_object {TYPE_2__ u; } ;
struct tl_compiler {TYPE_3__* serialized_first_function_expr; } ;
struct TYPE_7__ {struct TYPE_7__* right_name; } ;


 int assert (TYPE_3__*) ;
 char* cstr_dup (TYPE_3__*) ;
 int obj_empty_list ;
 int tl_compiler_clear_errors (struct tl_compiler*) ;
 int tl_failf (struct tl_compiler*,char*) ;
 int tl_scheme_object_free (struct tl_scheme_object*) ;
 struct tl_scheme_object* tl_scheme_parse (struct tl_compiler*,char const* const) ;
 int tl_serialize (struct tl_compiler*,struct tl_scheme_object*,int*,int) ;

int tl_serialize_rpc_function_call (struct tl_compiler *C, const char *const text, int *out, int olen, char **result_typename) {
  struct tl_scheme_object *O = tl_scheme_parse (C, text);
  *result_typename = ((void*)0);
  if (O == ((void*)0)) {
    return -1;
  }
  if (O->u.p.cdr != &obj_empty_list) {
    tl_compiler_clear_errors (C);
    tl_scheme_object_free (O);
    return tl_failf (C, "expected single rpc call");
  }

  int r = tl_serialize (C, O, out, olen);
  if (r >= 0 && result_typename != ((void*)0)) {
    assert (C->serialized_first_function_expr);
    assert (C->serialized_first_function_expr->right_name);
    *result_typename = cstr_dup (C->serialized_first_function_expr->right_name);
  }
  return r;
}
