
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int * (* dsa_do_sign ) (unsigned char const*,int,TYPE_2__*) ;} ;
typedef int DSA_SIG ;
typedef TYPE_2__ DSA ;


 int * stub1 (unsigned char const*,int,TYPE_2__*) ;

DSA_SIG *DSA_do_sign(const unsigned char *dgst, int dlen, DSA *dsa)
{
    return dsa->meth->dsa_do_sign(dgst, dlen, dsa);
}
