
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_7__ {size_t numOfOutputCols; TYPE_1__* pFields; scalar_t__* pOffset; } ;
struct TYPE_6__ {TYPE_3__ fieldsInfo; } ;
struct TYPE_5__ {scalar_t__ bytes; } ;
typedef TYPE_2__ SSqlCmd ;
typedef TYPE_3__ SFieldInfo ;



void tscFieldInfoCalOffset(SSqlCmd* pCmd) {
  SFieldInfo* pFieldInfo = &pCmd->fieldsInfo;
  pFieldInfo->pOffset[0] = 0;

  for (int32_t i = 1; i < pFieldInfo->numOfOutputCols; ++i) {
    pFieldInfo->pOffset[i] = pFieldInfo->pOffset[i - 1] + pFieldInfo->pFields[i - 1].bytes;
  }
}
