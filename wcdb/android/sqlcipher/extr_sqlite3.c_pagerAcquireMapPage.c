
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_6__ {int nExtra; int pageSize; int nMmapOut; int fd; TYPE_1__* pMmapFreelist; } ;
struct TYPE_5__ {void* pExtra; scalar_t__ flags; int nRef; scalar_t__ pPage; int pgno; void* pData; TYPE_2__* pPager; struct TYPE_5__* pDirty; } ;
typedef int Pgno ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 scalar_t__ PGHDR_MMAP ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (void*,int ,int) ;
 scalar_t__ sqlite3MallocZero (int) ;
 int sqlite3OsUnfetch (int ,int,void*) ;

__attribute__((used)) static int pagerAcquireMapPage(
  Pager *pPager,
  Pgno pgno,
  void *pData,
  PgHdr **ppPage
){
  PgHdr *p;

  if( pPager->pMmapFreelist ){
    *ppPage = p = pPager->pMmapFreelist;
    pPager->pMmapFreelist = p->pDirty;
    p->pDirty = 0;
    assert( pPager->nExtra>=8 );
    memset(p->pExtra, 0, 8);
  }else{
    *ppPage = p = (PgHdr *)sqlite3MallocZero(sizeof(PgHdr) + pPager->nExtra);
    if( p==0 ){
      sqlite3OsUnfetch(pPager->fd, (i64)(pgno-1) * pPager->pageSize, pData);
      return SQLITE_NOMEM_BKPT;
    }
    p->pExtra = (void *)&p[1];
    p->flags = PGHDR_MMAP;
    p->nRef = 1;
    p->pPager = pPager;
  }

  assert( p->pExtra==(void *)&p[1] );
  assert( p->pPage==0 );
  assert( p->flags==PGHDR_MMAP );
  assert( p->pPager==pPager );
  assert( p->nRef==1 );

  p->pgno = pgno;
  p->pData = pData;
  pPager->nMmapOut++;

  return SQLITE_OK;
}
