
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ rc; } ;
struct TYPE_9__ {TYPE_1__* aFirst; TYPE_2__* aSeg; } ;
struct TYPE_8__ {scalar_t__ nPos; scalar_t__ pLeaf; } ;
struct TYPE_7__ {size_t iFirst; } ;
typedef TYPE_2__ Fts5SegIter ;
typedef TYPE_3__ Fts5Iter ;
typedef TYPE_4__ Fts5Index ;


 scalar_t__ SQLITE_OK ;

__attribute__((used)) static int fts5MultiIterIsEmpty(Fts5Index *p, Fts5Iter *pIter){
  Fts5SegIter *pSeg = &pIter->aSeg[pIter->aFirst[1].iFirst];
  return (p->rc==SQLITE_OK && pSeg->pLeaf && pSeg->nPos==0);
}
