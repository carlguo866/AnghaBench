
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int query ;
struct TYPE_14__ {int commitSlot; scalar_t__ commitPoint; int maxBlocks; } ;
struct TYPE_13__ {scalar_t__ firstKey; scalar_t__ lastKey; int slot; scalar_t__ pos; scalar_t__ key; TYPE_3__* pObj; } ;
struct TYPE_12__ {scalar_t__ pointsPerBlock; int meterId; int sid; int vnode; scalar_t__ pCache; } ;
struct TYPE_10__ {int order; } ;
struct TYPE_11__ {scalar_t__ ekey; int slot; scalar_t__ pos; scalar_t__ key; scalar_t__ skey; TYPE_1__ order; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_2__ SQuery ;
typedef TYPE_3__ SMeterObj ;
typedef TYPE_4__ SImportInfo ;
typedef TYPE_5__ SCacheInfo ;


 int dTrace (char*,int ,int ,int ,scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;
 int vnodeSearchPointInCache (TYPE_3__*,TYPE_2__*) ;

int vnodeFindKeyInCache(SImportInfo *pImport, int order) {
  SMeterObj *pObj = pImport->pObj;
  int code = 0;
  SQuery query;
  SCacheInfo *pInfo = (SCacheInfo *)pObj->pCache;

  TSKEY key = order ? pImport->firstKey : pImport->lastKey;
  memset(&query, 0, sizeof(query));
  query.order.order = order;
  query.skey = key;
  query.ekey = order ? pImport->lastKey : pImport->firstKey;
  vnodeSearchPointInCache(pObj, &query);

  if (query.slot < 0) {
    pImport->slot = pInfo->commitSlot;
    if (pInfo->commitPoint >= pObj->pointsPerBlock) pImport->slot = (pImport->slot + 1) % pInfo->maxBlocks;
    pImport->pos = 0;
    pImport->key = 0;
    dTrace("vid:%d sid:%d id:%s, key:%ld, import to head of cache", pObj->vnode, pObj->sid, pObj->meterId, key);
    code = 0;
  } else {
    pImport->slot = query.slot;
    pImport->pos = query.pos;
    pImport->key = query.key;

    if (key != query.key) {
      if (order == 0) {

        pImport->pos++;
        if (pImport->pos >= pObj->pointsPerBlock) {
          pImport->slot = (pImport->slot + 1) % pInfo->maxBlocks;
          pImport->pos = 0;
        }
      } else {
        if (pImport->pos < 0) pImport->pos = 0;
      }
    }
    code = 0;
  }

  return code;
}
