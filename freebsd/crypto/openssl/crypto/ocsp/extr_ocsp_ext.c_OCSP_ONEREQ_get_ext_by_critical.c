
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int singleRequestExtensions; } ;
typedef TYPE_1__ OCSP_ONEREQ ;


 int X509v3_get_ext_by_critical (int ,int,int) ;

int OCSP_ONEREQ_get_ext_by_critical(OCSP_ONEREQ *x, int crit, int lastpos)
{
    return (X509v3_get_ext_by_critical
            (x->singleRequestExtensions, crit, lastpos));
}
