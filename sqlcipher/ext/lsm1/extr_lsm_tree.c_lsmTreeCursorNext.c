
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int lsm_db ;
struct TYPE_15__ {int nHeight; int iTransId; } ;
typedef TYPE_1__ TreeRoot ;
struct TYPE_16__ {scalar_t__* aiKeyPtr; } ;
typedef TYPE_2__ TreeNode ;
struct TYPE_17__ {int nKey; } ;
typedef TYPE_3__ TreeKey ;
struct TYPE_19__ {int member_1; int member_0; } ;
struct TYPE_18__ {int* aiCell; size_t iNode; TYPE_5__ blob; TYPE_2__** apTreeNode; TYPE_1__* pRoot; int * pDb; } ;
typedef TYPE_4__ TreeCursor ;
typedef TYPE_5__ TreeBlob ;


 int LSM_OK ;
 int TKV_KEY (TYPE_3__*) ;
 int assert (int) ;
 TYPE_3__* csrGetKey (TYPE_4__*,TYPE_5__*,int*) ;
 scalar_t__ getChildPtr (TYPE_2__*,int ,int) ;
 int lsmTreeCursorValid (TYPE_4__*) ;
 int tblobFree (int *,TYPE_5__*) ;
 int treeCursorRestore (TYPE_4__*,int*) ;
 scalar_t__ treeKeycmp (int ,int ,int ,int ) ;
 scalar_t__ treeShmptr (int *,scalar_t__) ;

int lsmTreeCursorNext(TreeCursor *pCsr){

  TreeKey *pK1;
  TreeBlob key1 = {0, 0};

  lsm_db *pDb = pCsr->pDb;
  TreeRoot *pRoot = pCsr->pRoot;
  const int iLeaf = pRoot->nHeight-1;
  int iCell;
  int rc = LSM_OK;
  TreeNode *pNode;


  int iRestore = 0;
  treeCursorRestore(pCsr, &iRestore);
  if( iRestore>0 ) return LSM_OK;





  pK1 = csrGetKey(pCsr, &key1, &rc);
  if( rc!=LSM_OK ) return rc;


  assert( lsmTreeCursorValid(pCsr) );
  assert( pCsr->aiCell[pCsr->iNode]<3 );

  pNode = pCsr->apTreeNode[pCsr->iNode];
  iCell = ++pCsr->aiCell[pCsr->iNode];




  if( pCsr->iNode<iLeaf && getChildPtr(pNode, pRoot->iTransId, iCell) ){
    do {
      u32 iNodePtr;
      pCsr->iNode++;
      iNodePtr = getChildPtr(pNode, pRoot->iTransId, iCell);
      pNode = (TreeNode *)treeShmptr(pDb, iNodePtr);
      pCsr->apTreeNode[pCsr->iNode] = pNode;
      iCell = pCsr->aiCell[pCsr->iNode] = (pNode->aiKeyPtr[0]==0);
    }while( pCsr->iNode < iLeaf );
  }




  else if( iCell>=3 || pNode->aiKeyPtr[iCell]==0 ){
    while( (--pCsr->iNode)>=0 ){
      iCell = pCsr->aiCell[pCsr->iNode];
      if( iCell<3 && pCsr->apTreeNode[pCsr->iNode]->aiKeyPtr[iCell] ) break;
    }
  }


  if( pCsr->iNode>=0 ){
    TreeKey *pK2 = csrGetKey(pCsr, &pCsr->blob, &rc);
    assert( rc||treeKeycmp(TKV_KEY(pK2),pK2->nKey,TKV_KEY(pK1),pK1->nKey)>=0 );
  }
  tblobFree(pDb, &key1);


  return rc;
}
