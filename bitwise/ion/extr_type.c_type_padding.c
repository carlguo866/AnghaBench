
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; size_t padding; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TYPE_COMPLETING ;
 int assert (int) ;

size_t type_padding(Type *type) {
    assert(type->kind > TYPE_COMPLETING);
    return type->padding;
}
