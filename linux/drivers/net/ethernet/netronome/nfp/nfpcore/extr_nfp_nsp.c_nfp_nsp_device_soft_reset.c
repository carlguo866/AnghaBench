
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int dummy; } ;


 int SPCODE_SOFT_RESET ;
 int nfp_nsp_command (struct nfp_nsp*,int ) ;

int nfp_nsp_device_soft_reset(struct nfp_nsp *state)
{
 return nfp_nsp_command(state, SPCODE_SOFT_RESET);
}
