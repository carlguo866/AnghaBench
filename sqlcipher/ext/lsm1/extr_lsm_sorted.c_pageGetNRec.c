
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t SEGMENT_NRECORD_OFFSET (int) ;
 scalar_t__ lsmGetU16 (int *) ;

__attribute__((used)) static int pageGetNRec(u8 *aData, int nData){
  return (int)lsmGetU16(&aData[SEGMENT_NRECORD_OFFSET(nData)]);
}
