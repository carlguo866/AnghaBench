
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int numOfPoints; scalar_t__ algorithm; int numOfCols; } ;
struct TYPE_15__ {int len; int data; } ;
struct TYPE_14__ {int vnode; int bytesPerPoint; int maxBytes; int pointsPerFileBlock; TYPE_1__* schema; } ;
struct TYPE_13__ {int fileId; int lfd; } ;
struct TYPE_12__ {int bytes; } ;
typedef TYPE_2__ SVnodeObj ;
typedef TYPE_3__ SMeterObj ;
typedef char SField ;
typedef TYPE_4__ SData ;
typedef TYPE_5__ SCompBlock ;


 int EXTRA_BYTES ;
 scalar_t__ TWO_STAGE_COMP ;
 scalar_t__ calloc (int,int) ;
 char* malloc (int) ;
 int tfree (char*) ;
 TYPE_2__* vnodeList ;
 int vnodeReadColumnToMem (int ,TYPE_5__*,char**,int,int ,int,char*,char*,int) ;
 int vnodeRecoverFromPeer (TYPE_2__*,int ) ;

int vnodeReadLastBlockToMem(SMeterObj *pObj, SCompBlock *pBlock, SData *sdata[]) {
  char * temp = ((void*)0);
  int col = 0, code = 0;
  SField *pFields = ((void*)0);
  char * buffer = ((void*)0);
  int bufferSize = 0;

  SVnodeObj *pVnode = vnodeList + pObj->vnode;
  temp = malloc(pObj->bytesPerPoint * (pBlock->numOfPoints + 1));
  if (pBlock->algorithm == TWO_STAGE_COMP) {
    bufferSize = pObj->maxBytes*pBlock->numOfPoints+EXTRA_BYTES;
    buffer = (char *)calloc(1, pObj->maxBytes * pBlock->numOfPoints + EXTRA_BYTES);
  }

  for (col = 0; col < pBlock->numOfCols; ++col) {
    code = vnodeReadColumnToMem(pVnode->lfd, pBlock, &pFields, col, sdata[col]->data,
                                pObj->pointsPerFileBlock*pObj->schema[col].bytes+EXTRA_BYTES, temp, buffer, bufferSize);
    if (code < 0) break;
    sdata[col]->len = pObj->schema[col].bytes * pBlock->numOfPoints;
  }

  tfree(buffer);
  tfree(temp);
  tfree(pFields);
  if (code < 0) code = vnodeRecoverFromPeer(pVnode, pVnode->fileId);
  return code;
}
