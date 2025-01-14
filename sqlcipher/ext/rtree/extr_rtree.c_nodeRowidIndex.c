
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ i64 ;
typedef int RtreeNode ;
typedef int Rtree ;


 int NCELL (int *) ;
 int RTREE_IS_CORRUPT (int *) ;
 int SQLITE_CORRUPT_VTAB ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ nodeGetRowid (int *,int *,int) ;

__attribute__((used)) static int nodeRowidIndex(
  Rtree *pRtree,
  RtreeNode *pNode,
  i64 iRowid,
  int *piIndex
){
  int ii;
  int nCell = NCELL(pNode);
  assert( nCell<200 );
  for(ii=0; ii<nCell; ii++){
    if( nodeGetRowid(pRtree, pNode, ii)==iRowid ){
      *piIndex = ii;
      return SQLITE_OK;
    }
  }
  RTREE_IS_CORRUPT(pRtree);
  return SQLITE_CORRUPT_VTAB;
}
