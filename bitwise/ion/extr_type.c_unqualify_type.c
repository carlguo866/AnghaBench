
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; struct TYPE_4__* base; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TYPE_CONST ;

Type *unqualify_type(Type *type) {
    if (type->kind == TYPE_CONST) {
        return type->base;
    } else {
        return type;
    }
}
