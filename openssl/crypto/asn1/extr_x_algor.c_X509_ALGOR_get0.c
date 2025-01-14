
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* parameter; int * algorithm; } ;
typedef TYPE_3__ X509_ALGOR ;
struct TYPE_6__ {void* ptr; } ;
struct TYPE_5__ {int type; TYPE_2__ value; } ;
typedef int ASN1_OBJECT ;


 int V_ASN1_UNDEF ;

void X509_ALGOR_get0(const ASN1_OBJECT **paobj, int *pptype,
                     const void **ppval, const X509_ALGOR *algor)
{
    if (paobj)
        *paobj = algor->algorithm;
    if (pptype) {
        if (algor->parameter == ((void*)0)) {
            *pptype = V_ASN1_UNDEF;
            return;
        } else
            *pptype = algor->parameter->type;
        if (ppval)
            *ppval = algor->parameter->value.ptr;
    }
}
