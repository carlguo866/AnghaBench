
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {unsigned char* aData; int hdrOffset; int childPtrSize; int pDbPage; TYPE_1__* pBt; scalar_t__ nFree; } ;
struct TYPE_4__ {int usableSize; int btsFlags; int mutex; } ;
typedef TYPE_2__ MemPage ;


 int BTS_SECURE_DELETE ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int get2byte (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int put2byte (unsigned char*,int) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int freeSpace(MemPage *pPage, int start, int size){
  int addr, pbegin, hdr;
  int iLast;
  unsigned char *data = pPage->aData;

  assert( pPage->pBt!=0 );
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  assert( start>=pPage->hdrOffset+6+pPage->childPtrSize );
  assert( (start + size) <= (int)pPage->pBt->usableSize );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( size>=0 );

  if( pPage->pBt->btsFlags & BTS_SECURE_DELETE ){


    memset(&data[start], 0, size);
  }
  hdr = pPage->hdrOffset;
  addr = hdr + 1;
  iLast = pPage->pBt->usableSize - 4;
  assert( start<=iLast );
  while( (pbegin = get2byte(&data[addr]))<start && pbegin>0 ){
    if( pbegin<addr+4 ){
      return SQLITE_CORRUPT_BKPT;
    }
    addr = pbegin;
  }
  if( pbegin>iLast ){
    return SQLITE_CORRUPT_BKPT;
  }
  assert( pbegin>addr || pbegin==0 );
  put2byte(&data[addr], start);
  put2byte(&data[start], pbegin);
  put2byte(&data[start+2], size);
  pPage->nFree = pPage->nFree + (u16)size;


  addr = hdr + 1;
  while( (pbegin = get2byte(&data[addr]))>0 ){
    int pnext, psize, x;
    assert( pbegin>addr );
    assert( pbegin <= (int)pPage->pBt->usableSize-4 );
    pnext = get2byte(&data[pbegin]);
    psize = get2byte(&data[pbegin+2]);
    if( pbegin + psize + 3 >= pnext && pnext>0 ){
      int frag = pnext - (pbegin+psize);
      if( (frag<0) || (frag>(int)data[hdr+7]) ){
        return SQLITE_CORRUPT_BKPT;
      }
      data[hdr+7] -= (u8)frag;
      x = get2byte(&data[pnext]);
      put2byte(&data[pbegin], x);
      x = pnext + get2byte(&data[pnext+2]) - pbegin;
      put2byte(&data[pbegin+2], x);
    }else{
      addr = pbegin;
    }
  }


  if( data[hdr+1]==data[hdr+5] && data[hdr+2]==data[hdr+6] ){
    int top;
    pbegin = get2byte(&data[hdr+1]);
    memcpy(&data[hdr+1], &data[pbegin], 2);
    top = get2byte(&data[hdr+5]) + get2byte(&data[pbegin+2]);
    put2byte(&data[hdr+5], top);
  }
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  return SQLITE_OK;
}
