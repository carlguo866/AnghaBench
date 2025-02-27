
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ s32 ;


 scalar_t__ CARDIO_ERROR_IOERROR ;
 scalar_t__ CARDIO_ERROR_IOTIMEOUT ;
 scalar_t__ CARDIO_ERROR_NOCARD ;
 scalar_t__ CARDIO_ERROR_READY ;
 int EXI_DEVICE_0 ;
 int EXI_Deselect (scalar_t__) ;
 scalar_t__ EXI_ImmEx (scalar_t__,int*,int,int ) ;
 int EXI_READWRITE ;
 scalar_t__ EXI_Select (scalar_t__,int ,int ) ;
 int EXI_Unlock (scalar_t__) ;
 scalar_t__ MAX_DRIVE ;
 scalar_t__ __card_checktimeout (scalar_t__,scalar_t__,int) ;
 int __exi_wait (scalar_t__) ;
 int _ioCardFreq ;
 int _ioClrFlag ;
 scalar_t__ gettick () ;

__attribute__((used)) static s32 __card_datares(s32 drv_no,void *buf)
{
 u8 *ptr;
 s32 startT,ret;

 if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

 ptr = buf;

 __exi_wait(drv_no);

 if(EXI_Select(drv_no,EXI_DEVICE_0,_ioCardFreq)==0) {
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_NOCARD;
 }

 ret = CARDIO_ERROR_READY;
 *ptr = _ioClrFlag;
 if(EXI_ImmEx(drv_no,ptr,1,EXI_READWRITE)==0) {
  EXI_Deselect(drv_no);
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_IOERROR;
 }
 startT = gettick();
 while(*ptr&0x10) {
  *ptr = _ioClrFlag;
  if(EXI_ImmEx(drv_no,ptr,1,EXI_READWRITE)==0) {
   EXI_Deselect(drv_no);
   EXI_Unlock(drv_no);
   return CARDIO_ERROR_IOERROR;
  }
  if(!(*ptr&0x10)) break;
  if(__card_checktimeout(drv_no,startT,1500)!=0) {
   *ptr = _ioClrFlag;
   if(EXI_ImmEx(drv_no,ptr,1,EXI_READWRITE)==0) {
    EXI_Deselect(drv_no);
    EXI_Unlock(drv_no);
    return CARDIO_ERROR_IOERROR;
   }
   if(*ptr&0x10) ret = CARDIO_ERROR_IOTIMEOUT;
   break;
  }
 }

 *(++ptr) = _ioClrFlag;
 if(EXI_ImmEx(drv_no,ptr,1,EXI_READWRITE)==0) {
  EXI_Deselect(drv_no);
  EXI_Unlock(drv_no);
  return CARDIO_ERROR_IOERROR;
 }

 startT = gettick();
 while(!*ptr) {
  *ptr = _ioClrFlag;
  if(EXI_ImmEx(drv_no,ptr,1,EXI_READWRITE)==0) {
   EXI_Deselect(drv_no);
   EXI_Unlock(drv_no);
   return CARDIO_ERROR_IOERROR;
  }
  if(*ptr) break;
  if(__card_checktimeout(drv_no,startT,1500)!=0) {
   *ptr = _ioClrFlag;
   if(EXI_ImmEx(drv_no,ptr,1,EXI_READWRITE)==0) {
    EXI_Deselect(drv_no);
    EXI_Unlock(drv_no);
    return CARDIO_ERROR_IOERROR;
   }
   if(!*ptr) ret = CARDIO_ERROR_IOTIMEOUT;
   break;
  }
 }
 EXI_Deselect(drv_no);
 EXI_Unlock(drv_no);

 return ret;
}
