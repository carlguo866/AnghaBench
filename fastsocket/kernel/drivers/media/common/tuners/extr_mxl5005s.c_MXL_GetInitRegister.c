
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ MXL_BlockInit (struct dvb_frontend*) ;
 scalar_t__ MXL_RegRead (struct dvb_frontend*,int,int*) ;

__attribute__((used)) static u16 MXL_GetInitRegister(struct dvb_frontend *fe, u8 *RegNum,
 u8 *RegVal, int *count)
{
 u16 status = 0;
 int i ;

 u8 RegAddr[] = {
  11, 12, 13, 22, 32, 43, 44, 53, 56, 59, 73,
  76, 77, 91, 134, 135, 137, 147,
  156, 166, 167, 168, 25 };

 *count = ARRAY_SIZE(RegAddr);

 status += MXL_BlockInit(fe);

 for (i = 0 ; i < *count; i++) {
  RegNum[i] = RegAddr[i];
  status += MXL_RegRead(fe, RegNum[i], &RegVal[i]);
 }

 return status;
}
