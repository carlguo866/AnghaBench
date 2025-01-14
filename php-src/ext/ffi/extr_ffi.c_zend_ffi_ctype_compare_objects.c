
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_ffi_type ;
struct TYPE_2__ {int type; } ;
typedef TYPE_1__ zend_ffi_ctype ;


 scalar_t__ IS_OBJECT ;
 int * ZEND_FFI_TYPE (int ) ;
 scalar_t__ Z_OBJCE_P (int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 scalar_t__ zend_ffi_ctype_ce ;
 int zend_ffi_exception_ce ;
 scalar_t__ zend_ffi_is_same_type (int *,int *) ;
 int zend_throw_error (int ,char*) ;

__attribute__((used)) static int zend_ffi_ctype_compare_objects(zval *o1, zval *o2)
{
 if (Z_TYPE_P(o1) == IS_OBJECT && Z_OBJCE_P(o1) == zend_ffi_ctype_ce &&
     Z_TYPE_P(o2) == IS_OBJECT && Z_OBJCE_P(o2) == zend_ffi_ctype_ce) {
  zend_ffi_ctype *ctype1 = (zend_ffi_ctype*)Z_OBJ_P(o1);
  zend_ffi_ctype *ctype2 = (zend_ffi_ctype*)Z_OBJ_P(o2);
  zend_ffi_type *type1 = ZEND_FFI_TYPE(ctype1->type);
  zend_ffi_type *type2 = ZEND_FFI_TYPE(ctype2->type);

  if (zend_ffi_is_same_type(type1, type2)) {
   return 0;
  } else {
   return 1;
  }
 }
 zend_throw_error(zend_ffi_exception_ce, "Comparison of incompatible C types");
 return 0;
}
