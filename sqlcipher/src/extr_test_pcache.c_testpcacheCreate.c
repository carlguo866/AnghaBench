
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int szPage; int szExtra; int nFree; int bPurgeable; TYPE_2__* a; int iMagic; int iRand; scalar_t__ nPinned; } ;
typedef TYPE_3__ testpcache ;
typedef int sqlite3_pcache ;
struct TYPE_9__ {scalar_t__ pDummy; int nInstance; int prngSeed; } ;
struct TYPE_6__ {void* pExtra; void* pBuf; } ;
struct TYPE_7__ {TYPE_1__ page; scalar_t__ isPinned; scalar_t__ key; } ;


 int TESTPCACHE_NPAGE ;
 int TESTPCACHE_VALID ;
 int assert (int) ;
 TYPE_3__* sqlite3_malloc (int) ;
 TYPE_4__ testpcacheGlobal ;

__attribute__((used)) static sqlite3_pcache *testpcacheCreate(
  int szPage,
  int szExtra,
  int bPurgeable
){
  int nMem;
  char *x;
  testpcache *p;
  int i;
  assert( testpcacheGlobal.pDummy!=0 );
  szPage = (szPage+7)&~7;
  nMem = sizeof(testpcache) + TESTPCACHE_NPAGE*(szPage+szExtra);
  p = sqlite3_malloc( nMem );
  if( p==0 ) return 0;
  x = (char*)&p[1];
  p->szPage = szPage;
  p->szExtra = szExtra;
  p->nFree = TESTPCACHE_NPAGE;
  p->nPinned = 0;
  p->iRand = testpcacheGlobal.prngSeed;
  p->bPurgeable = bPurgeable;
  p->iMagic = TESTPCACHE_VALID;
  for(i=0; i<TESTPCACHE_NPAGE; i++, x += (szPage+szExtra)){
    p->a[i].key = 0;
    p->a[i].isPinned = 0;
    p->a[i].page.pBuf = (void*)x;
    p->a[i].page.pExtra = (void*)&x[szPage];
  }
  testpcacheGlobal.nInstance++;
  return (sqlite3_pcache*)p;
}
