
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_11__ {size_t numOfCols; TYPE_2__* colList; } ;
struct TYPE_10__ {TYPE_3__** colDataBuffer; TYPE_5__* pQuery; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_7__ {size_t bytes; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
typedef TYPE_4__ SQueryRuntimeEnv ;
typedef TYPE_5__ SQuery ;


 int memcpy (char*,scalar_t__,size_t) ;

__attribute__((used)) static void getOneRowFromDiskBlock(SQueryRuntimeEnv *pRuntimeEnv, char **dst, int32_t pos) {
  SQuery *pQuery = pRuntimeEnv->pQuery;

  for (int32_t i = 0; i < pQuery->numOfCols; ++i) {
    int32_t bytes = pQuery->colList[i].data.bytes;
    memcpy(dst[i], pRuntimeEnv->colDataBuffer[i]->data + pos * bytes, bytes);
  }
}
