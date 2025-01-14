
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef size_t int32_t ;
struct TYPE_6__ {scalar_t__ hasResult; scalar_t__ ts; } ;
struct TYPE_5__ {scalar_t__ inputBytes; scalar_t__ aOutputBuf; scalar_t__* ptsList; } ;
typedef TYPE_1__ SQLFunctionCtx ;
typedef TYPE_2__ SFirstLastInfo ;


 scalar_t__ DATA_SET_FLAG ;
 int DO_UPDATE_TAG_COLUMNS (TYPE_1__*,scalar_t__) ;
 int memcpy (scalar_t__,char*,scalar_t__) ;
 int pTrace (char*,size_t,scalar_t__,size_t) ;

__attribute__((used)) static void last_data_assign_impl(SQLFunctionCtx *pCtx, char *pData, int32_t index) {
  int64_t *timestamp = pCtx->ptsList;

  SFirstLastInfo *pInfo = (SFirstLastInfo *)(pCtx->aOutputBuf + pCtx->inputBytes);

  if (pInfo->hasResult != DATA_SET_FLAG || pInfo->ts < timestamp[index]) {




    memcpy(pCtx->aOutputBuf, pData, pCtx->inputBytes);
    pInfo->hasResult = DATA_SET_FLAG;
    pInfo->ts = timestamp[index];

    DO_UPDATE_TAG_COLUMNS(pCtx, pInfo->ts);
  }
}
