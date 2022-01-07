
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_34__ {int nDim; } ;
struct TYPE_33__ {scalar_t__ iRowid; int * aCoord; } ;
struct TYPE_32__ {int iNode; } ;
typedef TYPE_1__ RtreeNode ;
typedef int RtreeDValue ;
typedef TYPE_2__ RtreeCell ;
typedef TYPE_3__ Rtree ;


 int ChooseLeaf (TYPE_3__*,TYPE_2__*,int,TYPE_1__**) ;
 int DCOORD (int ) ;
 int NCELL (TYPE_1__*) ;
 int RTREE_MAX_DIMENSIONS ;
 int RTREE_MINCELLS (TYPE_3__*) ;
 int RTREE_ZERO ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SortByDistance (int*,int,int*,int*) ;
 int fixBoundingBox (TYPE_3__*,TYPE_1__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int memset (int*,int ,int) ;
 int nodeGetCell (TYPE_3__*,TYPE_1__*,int,TYPE_2__*) ;
 int nodeInsertCell (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int nodeRelease (TYPE_3__*,TYPE_1__*) ;
 int nodeZero (TYPE_3__*,TYPE_1__*) ;
 int parentWrite (TYPE_3__*,scalar_t__,int ) ;
 int rowidWrite (TYPE_3__*,scalar_t__,int ) ;
 int rtreeInsertCell (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ;
 int sqlite3_free (TYPE_2__*) ;
 scalar_t__ sqlite3_malloc64 (int) ;

__attribute__((used)) static int Reinsert(
  Rtree *pRtree,
  RtreeNode *pNode,
  RtreeCell *pCell,
  int iHeight
){
  int *aOrder;
  int *aSpare;
  RtreeCell *aCell;
  RtreeDValue *aDistance;
  int nCell;
  RtreeDValue aCenterCoord[RTREE_MAX_DIMENSIONS];
  int iDim;
  int ii;
  int rc = SQLITE_OK;
  int n;

  memset(aCenterCoord, 0, sizeof(RtreeDValue)*RTREE_MAX_DIMENSIONS);

  nCell = NCELL(pNode)+1;
  n = (nCell+1)&(~1);




  aCell = (RtreeCell *)sqlite3_malloc64(n * (
    sizeof(RtreeCell) +
    sizeof(int) +
    sizeof(int) +
    sizeof(RtreeDValue)
  ));
  if( !aCell ){
    return SQLITE_NOMEM;
  }
  aOrder = (int *)&aCell[n];
  aSpare = (int *)&aOrder[n];
  aDistance = (RtreeDValue *)&aSpare[n];

  for(ii=0; ii<nCell; ii++){
    if( ii==(nCell-1) ){
      memcpy(&aCell[ii], pCell, sizeof(RtreeCell));
    }else{
      nodeGetCell(pRtree, pNode, ii, &aCell[ii]);
    }
    aOrder[ii] = ii;
    for(iDim=0; iDim<pRtree->nDim; iDim++){
      aCenterCoord[iDim] += DCOORD(aCell[ii].aCoord[iDim*2]);
      aCenterCoord[iDim] += DCOORD(aCell[ii].aCoord[iDim*2+1]);
    }
  }
  for(iDim=0; iDim<pRtree->nDim; iDim++){
    aCenterCoord[iDim] = (aCenterCoord[iDim]/(nCell*(RtreeDValue)2));
  }

  for(ii=0; ii<nCell; ii++){
    aDistance[ii] = RTREE_ZERO;
    for(iDim=0; iDim<pRtree->nDim; iDim++){
      RtreeDValue coord = (DCOORD(aCell[ii].aCoord[iDim*2+1]) -
                               DCOORD(aCell[ii].aCoord[iDim*2]));
      aDistance[ii] += (coord-aCenterCoord[iDim])*(coord-aCenterCoord[iDim]);
    }
  }

  SortByDistance(aOrder, nCell, aDistance, aSpare);
  nodeZero(pRtree, pNode);

  for(ii=0; rc==SQLITE_OK && ii<(nCell-(RTREE_MINCELLS(pRtree)+1)); ii++){
    RtreeCell *p = &aCell[aOrder[ii]];
    nodeInsertCell(pRtree, pNode, p);
    if( p->iRowid==pCell->iRowid ){
      if( iHeight==0 ){
        rc = rowidWrite(pRtree, p->iRowid, pNode->iNode);
      }else{
        rc = parentWrite(pRtree, p->iRowid, pNode->iNode);
      }
    }
  }
  if( rc==SQLITE_OK ){
    rc = fixBoundingBox(pRtree, pNode);
  }
  for(; rc==SQLITE_OK && ii<nCell; ii++){



    RtreeNode *pInsert;
    RtreeCell *p = &aCell[aOrder[ii]];
    rc = ChooseLeaf(pRtree, p, iHeight, &pInsert);
    if( rc==SQLITE_OK ){
      int rc2;
      rc = rtreeInsertCell(pRtree, pInsert, p, iHeight);
      rc2 = nodeRelease(pRtree, pInsert);
      if( rc==SQLITE_OK ){
        rc = rc2;
      }
    }
  }

  sqlite3_free(aCell);
  return rc;
}
