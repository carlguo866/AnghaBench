
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_posix_neg_context {int* Name; int DataLength; int ContextType; } ;


 int POSIX_CTXT_DATA_LEN ;
 int SMB2_POSIX_EXTENSIONS_AVAILABLE ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void
build_posix_ctxt(struct smb2_posix_neg_context *pneg_ctxt)
{
 pneg_ctxt->ContextType = SMB2_POSIX_EXTENSIONS_AVAILABLE;
 pneg_ctxt->DataLength = cpu_to_le16(POSIX_CTXT_DATA_LEN);

 pneg_ctxt->Name[0] = 0x93;
 pneg_ctxt->Name[1] = 0xAD;
 pneg_ctxt->Name[2] = 0x25;
 pneg_ctxt->Name[3] = 0x50;
 pneg_ctxt->Name[4] = 0x9C;
 pneg_ctxt->Name[5] = 0xB4;
 pneg_ctxt->Name[6] = 0x11;
 pneg_ctxt->Name[7] = 0xE7;
 pneg_ctxt->Name[8] = 0xB4;
 pneg_ctxt->Name[9] = 0x23;
 pneg_ctxt->Name[10] = 0x83;
 pneg_ctxt->Name[11] = 0xDE;
 pneg_ctxt->Name[12] = 0x96;
 pneg_ctxt->Name[13] = 0x8B;
 pneg_ctxt->Name[14] = 0xCD;
 pneg_ctxt->Name[15] = 0x7C;
}
