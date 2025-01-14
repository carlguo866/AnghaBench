
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_12__ {int ce_flags; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_13__ {size_t children; TYPE_3__** child; } ;
typedef TYPE_2__ zend_ast_list ;
struct TYPE_14__ {int attr; struct TYPE_14__** child; } ;
typedef TYPE_3__ zend_ast ;
typedef size_t uint32_t ;


 TYPE_1__* CG (int ) ;
 int E_COMPILE_ERROR ;
 scalar_t__ UNEXPECTED (int) ;
 int ZEND_ACC_ABSTRACT ;
 int ZEND_ACC_FINAL ;
 int ZEND_ACC_STATIC ;
 int ZEND_ACC_TRAIT ;
 int active_class_entry ;
 TYPE_2__* zend_ast_get_list (TYPE_3__*) ;
 int zend_ast_get_str (TYPE_3__*) ;
 int zend_ast_get_zval (TYPE_3__*) ;
 int zend_check_const_and_trait_alias_attr (int,char*) ;
 int zend_const_expr_to_zval (int *,TYPE_3__*) ;
 int zend_declare_class_constant_ex (TYPE_1__*,int *,int *,int,int *) ;
 int zend_error_noreturn (int ,char*) ;
 int * zend_string_copy (int ) ;
 int * zval_make_interned_string (int ) ;

void zend_compile_class_const_decl(zend_ast *ast)
{
 zend_ast_list *list = zend_ast_get_list(ast);
 zend_class_entry *ce = CG(active_class_entry);
 uint32_t i;

 if ((ce->ce_flags & ZEND_ACC_TRAIT) != 0) {
  zend_error_noreturn(E_COMPILE_ERROR, "Traits cannot have constants");
  return;
 }

 for (i = 0; i < list->children; ++i) {
  zend_ast *const_ast = list->child[i];
  zend_ast *name_ast = const_ast->child[0];
  zend_ast *value_ast = const_ast->child[1];
  zend_ast *doc_comment_ast = const_ast->child[2];
  zend_string *name = zval_make_interned_string(zend_ast_get_zval(name_ast));
  zend_string *doc_comment = doc_comment_ast ? zend_string_copy(zend_ast_get_str(doc_comment_ast)) : ((void*)0);
  zval value_zv;

  if (UNEXPECTED(ast->attr & (ZEND_ACC_STATIC|ZEND_ACC_ABSTRACT|ZEND_ACC_FINAL))) {
   zend_check_const_and_trait_alias_attr(ast->attr, "constant");
  }

  zend_const_expr_to_zval(&value_zv, value_ast);
  zend_declare_class_constant_ex(ce, name, &value_zv, ast->attr, doc_comment);
 }
}
