
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowpan_nhc {int * idmask; int * id; } ;


 int LOWPAN_NHC_DEST_ID_0 ;
 int LOWPAN_NHC_DEST_MASK_0 ;

__attribute__((used)) static void dest_nhid_setup(struct lowpan_nhc *nhc)
{
 nhc->id[0] = LOWPAN_NHC_DEST_ID_0;
 nhc->idmask[0] = LOWPAN_NHC_DEST_MASK_0;
}
