
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int dummy; } ;


 int AAC_MEM0_SETREG4 (struct aac_softc*,int ,int) ;
 int AAC_RKT_OQUE ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static void
aac_rkt_set_outb_queue(struct aac_softc *sc, int index)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 AAC_MEM0_SETREG4(sc, AAC_RKT_OQUE, index);
}
