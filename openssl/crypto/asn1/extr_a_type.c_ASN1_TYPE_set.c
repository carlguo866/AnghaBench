
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int boolean; int * ptr; } ;
struct TYPE_5__ {int type; TYPE_1__ value; } ;
typedef int ASN1_VALUE ;
typedef TYPE_2__ ASN1_TYPE ;


 int V_ASN1_BOOLEAN ;
 int V_ASN1_NULL ;
 int asn1_primitive_free (int **,int *,int ) ;

void ASN1_TYPE_set(ASN1_TYPE *a, int type, void *value)
{
    if (a->type != V_ASN1_BOOLEAN
            && a->type != V_ASN1_NULL
            && a->value.ptr != ((void*)0)) {
        ASN1_TYPE **tmp_a = &a;
        asn1_primitive_free((ASN1_VALUE **)tmp_a, ((void*)0), 0);
    }
    a->type = type;
    if (type == V_ASN1_BOOLEAN)
        a->value.boolean = value ? 0xff : 0;
    else
        a->value.ptr = value;
}
