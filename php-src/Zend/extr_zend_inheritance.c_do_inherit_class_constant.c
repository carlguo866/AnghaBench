
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_11__ {int type; int constants_table; int ce_flags; TYPE_1__* parent; int * name; } ;
typedef TYPE_2__ zend_class_entry ;
struct TYPE_12__ {int value; } ;
typedef TYPE_3__ zend_class_constant ;
struct TYPE_10__ {int * name; } ;


 int E_COMPILE_ERROR ;
 scalar_t__ IS_CONSTANT_AST ;
 scalar_t__ UNEXPECTED (int) ;
 int ZEND_ACC_CONSTANTS_UPDATED ;
 int ZEND_ACC_PPP_MASK ;
 int ZEND_ACC_PRIVATE ;
 int ZEND_ACC_PUBLIC ;
 int ZEND_INTERNAL_CLASS ;
 int ZSTR_VAL (int *) ;
 int Z_ACCESS_FLAGS (int ) ;
 scalar_t__ Z_PTR_P (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int _zend_hash_append_ptr (int *,int *,TYPE_3__*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 TYPE_3__* pemalloc (int,int) ;
 int zend_error_noreturn (int ,char*,int ,int ,int ,int ,char*) ;
 int * zend_hash_find_ex (int *,int *,int) ;
 int zend_visibility_string (int) ;

__attribute__((used)) static void do_inherit_class_constant(zend_string *name, zend_class_constant *parent_const, zend_class_entry *ce)
{
 zval *zv = zend_hash_find_ex(&ce->constants_table, name, 1);
 zend_class_constant *c;

 if (zv != ((void*)0)) {
  c = (zend_class_constant*)Z_PTR_P(zv);
  if (UNEXPECTED((Z_ACCESS_FLAGS(c->value) & ZEND_ACC_PPP_MASK) > (Z_ACCESS_FLAGS(parent_const->value) & ZEND_ACC_PPP_MASK))) {
   zend_error_noreturn(E_COMPILE_ERROR, "Access level to %s::%s must be %s (as in class %s)%s",
    ZSTR_VAL(ce->name), ZSTR_VAL(name), zend_visibility_string(Z_ACCESS_FLAGS(parent_const->value)), ZSTR_VAL(ce->parent->name), (Z_ACCESS_FLAGS(parent_const->value) & ZEND_ACC_PUBLIC) ? "" : " or weaker");
  }
 } else if (!(Z_ACCESS_FLAGS(parent_const->value) & ZEND_ACC_PRIVATE)) {
  if (Z_TYPE(parent_const->value) == IS_CONSTANT_AST) {
   ce->ce_flags &= ~ZEND_ACC_CONSTANTS_UPDATED;
  }
  if (ce->type & ZEND_INTERNAL_CLASS) {
   c = pemalloc(sizeof(zend_class_constant), 1);
   memcpy(c, parent_const, sizeof(zend_class_constant));
   parent_const = c;
  }
  _zend_hash_append_ptr(&ce->constants_table, name, parent_const);
 }
}
