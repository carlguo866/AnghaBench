
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ zend_ffi_tag ;


 TYPE_1__* Z_PTR_P (int *) ;
 int free (TYPE_1__*) ;
 int zend_ffi_type_dtor (int ) ;

__attribute__((used)) static void zend_ffi_tag_hash_persistent_dtor(zval *zv)
{
 zend_ffi_tag *tag = Z_PTR_P(zv);
 zend_ffi_type_dtor(tag->type);
 free(tag);
}
