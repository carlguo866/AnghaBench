
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int i64 ;
struct TYPE_21__ {int usableSize; scalar_t__ autoVacuum; } ;
struct TYPE_20__ {int nSize; scalar_t__ nPayload; scalar_t__ nLocal; int nKey; } ;
struct TYPE_19__ {char* zPfx; int v1; int v2; int* heap; scalar_t__ mxErr; TYPE_4__* pBt; } ;
struct TYPE_18__ {int isInit; int* aData; int hdrOffset; int nCell; int leaf; int* aCellIdx; int (* xCellSize ) (TYPE_1__*,int*) ;scalar_t__ intKey; int (* xParseCell ) (TYPE_1__*,int*,TYPE_3__*) ;} ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ IntegrityCk ;
typedef TYPE_3__ CellInfo ;
typedef TYPE_4__ BtShared ;


 int PTRMAP_BTREE ;
 int PTRMAP_OVERFLOW1 ;
 int SQLITE_CORRUPT ;
 int assert (int) ;
 int btreeComputeFreeSpace (TYPE_1__*) ;
 int btreeGetPage (TYPE_4__*,int,TYPE_1__**,int ) ;
 int btreeHeapInsert (int*,int) ;
 scalar_t__ btreeHeapPull (int*,int*) ;
 int btreeInitPage (TYPE_1__*) ;
 int checkAppendMsg (TYPE_2__*,char*,...) ;
 int checkList (TYPE_2__*,int ,int,int) ;
 int checkPtrmap (TYPE_2__*,int,int ,int) ;
 scalar_t__ checkRef (TYPE_2__*,int) ;
 int get2byte (int*) ;
 int get2byteAligned (int*) ;
 int get2byteNotZero (int*) ;
 int get4byte (int*) ;
 int releasePage (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int*,TYPE_3__*) ;
 int stub2 (TYPE_1__*,int*) ;

__attribute__((used)) static int checkTreePage(
  IntegrityCk *pCheck,
  int iPage,
  i64 *piMinKey,
  i64 maxKey
){
  MemPage *pPage = 0;
  int i;
  int rc;
  int depth = -1, d2;
  int pgno;
  int nFrag;
  int hdr;
  int cellStart;
  int nCell;
  int doCoverageCheck = 1;
  int keyCanBeEqual = 1;

  u8 *data;
  u8 *pCell;
  u8 *pCellIdx;
  BtShared *pBt;
  u32 pc;
  u32 usableSize;
  u32 contentOffset;
  u32 *heap = 0;
  u32 x, prev = 0;
  const char *saved_zPfx = pCheck->zPfx;
  int saved_v1 = pCheck->v1;
  int saved_v2 = pCheck->v2;
  u8 savedIsInit = 0;



  pBt = pCheck->pBt;
  usableSize = pBt->usableSize;
  if( iPage==0 ) return 0;
  if( checkRef(pCheck, iPage) ) return 0;
  pCheck->zPfx = "Page %d: ";
  pCheck->v1 = iPage;
  if( (rc = btreeGetPage(pBt, (Pgno)iPage, &pPage, 0))!=0 ){
    checkAppendMsg(pCheck,
       "unable to get the page. error code=%d", rc);
    goto end_of_check;
  }



  savedIsInit = pPage->isInit;
  pPage->isInit = 0;
  if( (rc = btreeInitPage(pPage))!=0 ){
    assert( rc==SQLITE_CORRUPT );
    checkAppendMsg(pCheck,
                   "btreeInitPage() returns error code %d", rc);
    goto end_of_check;
  }
  if( (rc = btreeComputeFreeSpace(pPage))!=0 ){
    assert( rc==SQLITE_CORRUPT );
    checkAppendMsg(pCheck, "free space corruption", rc);
    goto end_of_check;
  }
  data = pPage->aData;
  hdr = pPage->hdrOffset;


  pCheck->zPfx = "On tree page %d cell %d: ";
  contentOffset = get2byteNotZero(&data[hdr+5]);
  assert( contentOffset<=usableSize );



  nCell = get2byte(&data[hdr+3]);
  assert( pPage->nCell==nCell );



  cellStart = hdr + 12 - 4*pPage->leaf;
  assert( pPage->aCellIdx==&data[cellStart] );
  pCellIdx = &data[cellStart + 2*(nCell-1)];

  if( !pPage->leaf ){

    pgno = get4byte(&data[hdr+8]);

    if( pBt->autoVacuum ){
      pCheck->zPfx = "On page %d at right child: ";
      checkPtrmap(pCheck, pgno, PTRMAP_BTREE, iPage);
    }

    depth = checkTreePage(pCheck, pgno, &maxKey, maxKey);
    keyCanBeEqual = 0;
  }else{


    heap = pCheck->heap;
    heap[0] = 0;
  }



  for(i=nCell-1; i>=0 && pCheck->mxErr; i--){
    CellInfo info;


    pCheck->v2 = i;
    assert( pCellIdx==&data[cellStart + i*2] );
    pc = get2byteAligned(pCellIdx);
    pCellIdx -= 2;
    if( pc<contentOffset || pc>usableSize-4 ){
      checkAppendMsg(pCheck, "Offset %d out of range %d..%d",
                             pc, contentOffset, usableSize-4);
      doCoverageCheck = 0;
      continue;
    }
    pCell = &data[pc];
    pPage->xParseCell(pPage, pCell, &info);
    if( pc+info.nSize>usableSize ){
      checkAppendMsg(pCheck, "Extends off end of page");
      doCoverageCheck = 0;
      continue;
    }


    if( pPage->intKey ){
      if( keyCanBeEqual ? (info.nKey > maxKey) : (info.nKey >= maxKey) ){
        checkAppendMsg(pCheck, "Rowid %lld out of order", info.nKey);
      }
      maxKey = info.nKey;
      keyCanBeEqual = 0;
    }


    if( info.nPayload>info.nLocal ){
      u32 nPage;
      Pgno pgnoOvfl;
      assert( pc + info.nSize - 4 <= usableSize );
      nPage = (info.nPayload - info.nLocal + usableSize - 5)/(usableSize - 4);
      pgnoOvfl = get4byte(&pCell[info.nSize - 4]);

      if( pBt->autoVacuum ){
        checkPtrmap(pCheck, pgnoOvfl, PTRMAP_OVERFLOW1, iPage);
      }

      checkList(pCheck, 0, pgnoOvfl, nPage);
    }

    if( !pPage->leaf ){

      pgno = get4byte(pCell);

      if( pBt->autoVacuum ){
        checkPtrmap(pCheck, pgno, PTRMAP_BTREE, iPage);
      }

      d2 = checkTreePage(pCheck, pgno, &maxKey, maxKey);
      keyCanBeEqual = 0;
      if( d2!=depth ){
        checkAppendMsg(pCheck, "Child page depth differs");
        depth = d2;
      }
    }else{

      btreeHeapInsert(heap, (pc<<16)|(pc+info.nSize-1));
    }
  }
  *piMinKey = maxKey;



  pCheck->zPfx = 0;
  if( doCoverageCheck && pCheck->mxErr>0 ){



    if( !pPage->leaf ){
      heap = pCheck->heap;
      heap[0] = 0;
      for(i=nCell-1; i>=0; i--){
        u32 size;
        pc = get2byteAligned(&data[cellStart+i*2]);
        size = pPage->xCellSize(pPage, &data[pc]);
        btreeHeapInsert(heap, (pc<<16)|(pc+size-1));
      }
    }






    i = get2byte(&data[hdr+1]);
    while( i>0 ){
      int size, j;
      assert( (u32)i<=usableSize-4 );
      size = get2byte(&data[i+2]);
      assert( (u32)(i+size)<=usableSize );
      btreeHeapInsert(heap, (((u32)i)<<16)|(i+size-1));




      j = get2byte(&data[i]);


      assert( j==0 || j>i+size );
      assert( (u32)j<=usableSize-4 );
      i = j;
    }
    nFrag = 0;
    prev = contentOffset - 1;
    while( btreeHeapPull(heap,&x) ){
      if( (prev&0xffff)>=(x>>16) ){
        checkAppendMsg(pCheck,
          "Multiple uses for byte %u of page %d", x>>16, iPage);
        break;
      }else{
        nFrag += (x>>16) - (prev&0xffff) - 1;
        prev = x;
      }
    }
    nFrag += usableSize - (prev&0xffff) - 1;





    if( heap[0]==0 && nFrag!=data[hdr+7] ){
      checkAppendMsg(pCheck,
          "Fragmentation of %d bytes reported as %d on page %d",
          nFrag, data[hdr+7], iPage);
    }
  }

end_of_check:
  if( !doCoverageCheck ) pPage->isInit = savedIsInit;
  releasePage(pPage);
  pCheck->zPfx = saved_zPfx;
  pCheck->v1 = saved_v1;
  pCheck->v2 = saved_v2;
  return depth+1;
}
