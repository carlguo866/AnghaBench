
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet_hw_tsomax {scalar_t__ tsomaxbytes; scalar_t__ tsomaxsegcount; scalar_t__ tsomaxsegsize; } ;
typedef TYPE_1__* if_t ;
struct TYPE_3__ {scalar_t__ if_hw_tsomax; scalar_t__ if_hw_tsomaxsegcount; scalar_t__ if_hw_tsomaxsegsize; } ;



void
if_hw_tsomax_common(if_t ifp, struct ifnet_hw_tsomax *pmax)
{







 if (pmax->tsomaxbytes == 0 || (ifp->if_hw_tsomax != 0 &&
     ifp->if_hw_tsomax < pmax->tsomaxbytes)) {
  pmax->tsomaxbytes = ifp->if_hw_tsomax;
 }
 if (pmax->tsomaxsegcount == 0 || (ifp->if_hw_tsomaxsegcount != 0 &&
     ifp->if_hw_tsomaxsegcount < pmax->tsomaxsegcount)) {
  pmax->tsomaxsegcount = ifp->if_hw_tsomaxsegcount;
 }
 if (pmax->tsomaxsegsize == 0 || (ifp->if_hw_tsomaxsegsize != 0 &&
     ifp->if_hw_tsomaxsegsize < pmax->tsomaxsegsize)) {
  pmax->tsomaxsegsize = ifp->if_hw_tsomaxsegsize;
 }
}
