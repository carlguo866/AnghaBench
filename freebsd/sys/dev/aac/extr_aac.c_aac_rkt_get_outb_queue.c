
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int dummy; } ;


 int AAC_MEM0_GETREG4 (struct aac_softc*,int ) ;
 int AAC_RKT_OQUE ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static int
aac_rkt_get_outb_queue(struct aac_softc *sc)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 return(AAC_MEM0_GETREG4(sc, AAC_RKT_OQUE));
}
