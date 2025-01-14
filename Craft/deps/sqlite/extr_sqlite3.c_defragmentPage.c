
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned char u8 ;
struct TYPE_6__ {scalar_t__ nOverflow; unsigned char* aData; int hdrOffset; int cellOffset; int nCell; int nFree; int pDbPage; TYPE_1__* pBt; } ;
struct TYPE_5__ {int usableSize; int pPager; int mutex; } ;
typedef TYPE_2__ MemPage ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_MAX_PAGE_SIZE ;
 int SQLITE_OK ;
 int assert (int) ;
 int cellSizePtr (TYPE_2__*,unsigned char*) ;
 int get2byte (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int put2byte (unsigned char*,int) ;
 int sqlite3PagerIswriteable (int ) ;
 unsigned char* sqlite3PagerTempSpace (int ) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static int defragmentPage(MemPage *pPage){
  int i;
  int pc;
  int hdr;
  int size;
  int usableSize;
  int cellOffset;
  int cbrk;
  int nCell;
  unsigned char *data;
  unsigned char *temp;
  int iCellFirst;
  int iCellLast;


  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  assert( pPage->pBt!=0 );
  assert( pPage->pBt->usableSize <= SQLITE_MAX_PAGE_SIZE );
  assert( pPage->nOverflow==0 );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  temp = sqlite3PagerTempSpace(pPage->pBt->pPager);
  data = pPage->aData;
  hdr = pPage->hdrOffset;
  cellOffset = pPage->cellOffset;
  nCell = pPage->nCell;
  assert( nCell==get2byte(&data[hdr+3]) );
  usableSize = pPage->pBt->usableSize;
  cbrk = get2byte(&data[hdr+5]);
  memcpy(&temp[cbrk], &data[cbrk], usableSize - cbrk);
  cbrk = usableSize;
  iCellFirst = cellOffset + 2*nCell;
  iCellLast = usableSize - 4;
  for(i=0; i<nCell; i++){
    u8 *pAddr;
    pAddr = &data[cellOffset + i*2];
    pc = get2byte(pAddr);
    testcase( pc==iCellFirst );
    testcase( pc==iCellLast );




    if( pc<iCellFirst || pc>iCellLast ){
      return SQLITE_CORRUPT_BKPT;
    }

    assert( pc>=iCellFirst && pc<=iCellLast );
    size = cellSizePtr(pPage, &temp[pc]);
    cbrk -= size;





    if( cbrk<iCellFirst || pc+size>usableSize ){
      return SQLITE_CORRUPT_BKPT;
    }

    assert( cbrk+size<=usableSize && cbrk>=iCellFirst );
    testcase( cbrk+size==usableSize );
    testcase( pc+size==usableSize );
    memcpy(&data[cbrk], &temp[pc], size);
    put2byte(pAddr, cbrk);
  }
  assert( cbrk>=iCellFirst );
  put2byte(&data[hdr+5], cbrk);
  data[hdr+1] = 0;
  data[hdr+2] = 0;
  data[hdr+7] = 0;
  memset(&data[iCellFirst], 0, cbrk-iCellFirst);
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  if( cbrk-iCellFirst!=pPage->nFree ){
    return SQLITE_CORRUPT_BKPT;
  }
  return SQLITE_OK;
}
