
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
struct TYPE_13__ {int* CustInst; int* LowFreq; int* HiFreq; int* InstVol; int * patch_number; } ;
typedef TYPE_1__ OPLL ;


 int CAR (TYPE_1__*,int) ;
 int MOD (TYPE_1__*,int) ;
 int UPDATE_ALL (int ) ;
 int UPDATE_EG (int ) ;
 int UPDATE_PG (int ) ;
 int UPDATE_RKS (int ) ;
 int UPDATE_TLL (int ) ;
 int UPDATE_WF (int ) ;
 int keyOff (TYPE_1__*,int) ;
 int keyOn (TYPE_1__*,int) ;
 int setBlock (TYPE_1__*,int,int) ;
 int setFnumber (TYPE_1__*,int,int) ;
 int setInstrument (TYPE_1__*,int,int) ;
 int setSustine (TYPE_1__*,int,int) ;
 int setVolume (TYPE_1__*,int,int) ;
 int update_key_status (TYPE_1__*) ;

void OPLL_writeReg(OPLL * opll, uint32 reg, uint32 data) {
 int32 i, v, ch;

 data = data & 0xff;
 reg = reg & 0x3f;

 switch (reg) {
 case 0x00:
  opll->CustInst[0] = data;
  for (i = 0; i < 6; i++) {
   if (opll->patch_number[i] == 0) {
    setInstrument(opll, i, 0);
    UPDATE_PG(MOD(opll, i));
    UPDATE_RKS(MOD(opll, i));
    UPDATE_EG(MOD(opll, i));
   }
  }
  break;

 case 0x01:
  opll->CustInst[1] = data;
  for (i = 0; i < 6; i++) {
   if (opll->patch_number[i] == 0) {
    setInstrument(opll, i, 0);
    UPDATE_PG(CAR(opll, i));
    UPDATE_RKS(CAR(opll, i));
    UPDATE_EG(CAR(opll, i));
   }
  }
  break;

 case 0x02:
  opll->CustInst[2] = data;
  for (i = 0; i < 6; i++) {
   if (opll->patch_number[i] == 0) {
    setInstrument(opll, i, 0);
    UPDATE_TLL(MOD(opll, i));
   }
  }
  break;

 case 0x03:
  opll->CustInst[3] = data;
  for (i = 0; i < 6; i++) {
   if (opll->patch_number[i] == 0) {
    setInstrument(opll, i, 0);
    UPDATE_WF(MOD(opll, i));
    UPDATE_WF(CAR(opll, i));
   }
  }
  break;

 case 0x04:
  opll->CustInst[4] = data;
  for (i = 0; i < 6; i++) {
   if (opll->patch_number[i] == 0) {
    setInstrument(opll, i, 0);
    UPDATE_EG(MOD(opll, i));
   }
  }
  break;

 case 0x05:
  opll->CustInst[5] = data;
  for (i = 0; i < 6; i++) {
   if (opll->patch_number[i] == 0) {
    setInstrument(opll, i, 0);
    UPDATE_EG(CAR(opll, i));
   }
  }
  break;

 case 0x06:
  opll->CustInst[6] = data;
  for (i = 0; i < 6; i++) {
   if (opll->patch_number[i] == 0) {
    setInstrument(opll, i, 0);
    UPDATE_EG(MOD(opll, i));
   }
  }
  break;

 case 0x07:
  opll->CustInst[7] = data;
  for (i = 0; i < 6; i++) {
   if (opll->patch_number[i] == 0) {
    setInstrument(opll, i, 0);
    UPDATE_EG(CAR(opll, i));
   }
  }
  break;

 case 0x10:
 case 0x11:
 case 0x12:
 case 0x13:
 case 0x14:
 case 0x15:
  ch = reg - 0x10;
  opll->LowFreq[ch] = data;
  setFnumber(opll, ch, data + ((opll->HiFreq[ch] & 1) << 8));
  UPDATE_ALL(MOD(opll, ch));
  UPDATE_ALL(CAR(opll, ch));
  break;

 case 0x20:
 case 0x21:
 case 0x22:
 case 0x23:
 case 0x24:
 case 0x25:
  ch = reg - 0x20;
  opll->HiFreq[ch] = data;

  setFnumber(opll, ch, ((data & 1) << 8) + opll->LowFreq[ch]);
  setBlock(opll, ch, (data >> 1) & 7);
  setSustine(opll, ch, (data >> 5) & 1);
  if (data & 0x10)
   keyOn(opll, ch);
  else
   keyOff(opll, ch);
  UPDATE_ALL(MOD(opll, ch));
  UPDATE_ALL(CAR(opll, ch));
  update_key_status(opll);
  break;

 case 0x30:
 case 0x31:
 case 0x32:
 case 0x33:
 case 0x34:
 case 0x35:
  opll->InstVol[reg - 0x30] = data;
  i = (data >> 4) & 15;
  v = data & 15;
  setInstrument(opll, reg - 0x30, i);
  setVolume(opll, reg - 0x30, v << 2);
  UPDATE_ALL(MOD(opll, reg - 0x30));
  UPDATE_ALL(CAR(opll, reg - 0x30));
  break;

 default:
  break;
 }
}
