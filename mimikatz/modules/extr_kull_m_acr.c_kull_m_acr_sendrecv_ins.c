
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT16 ;
typedef int PKULL_M_ACR_COMM ;
typedef int BYTE ;
typedef int BOOL ;


 int ACR_MAX_LEN ;
 int FALSE ;
 int RtlCopyMemory (int*,int const*,scalar_t__ const) ;
 int kull_m_arc_sendrecv (int ,int*,int,int*,scalar_t__*) ;

BOOL kull_m_acr_sendrecv_ins(PKULL_M_ACR_COMM comm, BYTE cla, BYTE ins, BYTE p1, BYTE p2, const BYTE *pbData, const UINT16 cbData, BYTE *pbResult, UINT16 *cbResult, BOOL noLe)
{
 BOOL status = FALSE;
 BYTE buffer[ACR_MAX_LEN], idx = 4;


 buffer[0] = cla;
 buffer[1] = ins;
 buffer[2] = p1;
 buffer[3] = p2;

 if(cbData)
 {
  buffer[idx++] = (BYTE) cbData;
  RtlCopyMemory(buffer + idx, pbData, cbData);
  idx += cbData;
 }
 if(!noLe && *cbResult)
  buffer[idx++] = (BYTE) *cbResult;
 return kull_m_arc_sendrecv(comm, buffer, idx, pbResult, cbResult);
}
