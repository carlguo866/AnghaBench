
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aac_softc {int dummy; } ;


 int AAC_MEM1_SETREG4 (struct aac_softc*,scalar_t__,int ) ;
 scalar_t__ AAC_RKT_MAILBOX ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static void
aac_rkt_set_mailbox(struct aac_softc *sc, u_int32_t command, u_int32_t arg0,
      u_int32_t arg1, u_int32_t arg2, u_int32_t arg3)
{
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 AAC_MEM1_SETREG4(sc, AAC_RKT_MAILBOX, command);
 AAC_MEM1_SETREG4(sc, AAC_RKT_MAILBOX + 4, arg0);
 AAC_MEM1_SETREG4(sc, AAC_RKT_MAILBOX + 8, arg1);
 AAC_MEM1_SETREG4(sc, AAC_RKT_MAILBOX + 12, arg2);
 AAC_MEM1_SETREG4(sc, AAC_RKT_MAILBOX + 16, arg3);
}
