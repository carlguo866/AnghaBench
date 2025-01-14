
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LDF_OP (unsigned int const) ;
 scalar_t__ LFM_OP (unsigned int const) ;
 unsigned int PerformLDF (unsigned int const) ;
 unsigned int PerformLFM (unsigned int const) ;
 unsigned int PerformSFM (unsigned int const) ;
 unsigned int PerformSTF (unsigned int const) ;
 scalar_t__ SFM_OP (unsigned int const) ;
 scalar_t__ STF_OP (unsigned int const) ;

unsigned int EmulateCPDT(const unsigned int opcode)
{
 unsigned int nRc = 0;

 if (LDF_OP(opcode)) {
  nRc = PerformLDF(opcode);
 } else if (LFM_OP(opcode)) {
  nRc = PerformLFM(opcode);
 } else if (STF_OP(opcode)) {
  nRc = PerformSTF(opcode);
 } else if (SFM_OP(opcode)) {
  nRc = PerformSFM(opcode);
 } else {
  nRc = 0;
 }

 return nRc;
}
