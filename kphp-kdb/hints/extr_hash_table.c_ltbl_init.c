
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int currId; scalar_t__ size; int * rev; int to; } ;
typedef TYPE_1__ lookup_table ;


 int htbl_init (int *) ;

void ltbl_init (lookup_table *table) {
  htbl_init (&(table->to));
  table->rev = ((void*)0);
  table->size = 0;
  table->currId = 1;
}
