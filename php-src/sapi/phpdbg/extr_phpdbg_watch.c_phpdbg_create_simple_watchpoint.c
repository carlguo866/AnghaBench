
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ phpdbg_watch_element ;
typedef int Bucket ;


 int PHPDBG_WATCH_SIMPLE ;
 int SUCCESS ;
 int phpdbg_add_bucket_watch_element (int *,TYPE_1__*) ;

__attribute__((used)) static int phpdbg_create_simple_watchpoint(zval *zv, phpdbg_watch_element *element) {
 element->flags = PHPDBG_WATCH_SIMPLE;
 phpdbg_add_bucket_watch_element((Bucket *) zv, element);
 return SUCCESS;
}
