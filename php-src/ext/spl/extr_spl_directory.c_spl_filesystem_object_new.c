
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int zend_class_entry ;


 int * spl_filesystem_object_new_ex (int *) ;

__attribute__((used)) static zend_object *spl_filesystem_object_new(zend_class_entry *class_type)
{
 return spl_filesystem_object_new_ex(class_type);
}
