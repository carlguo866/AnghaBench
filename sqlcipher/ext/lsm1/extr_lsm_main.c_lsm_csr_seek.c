
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_cursor ;
typedef int MultiCursor ;


 int lsmMCursorSeek (int *,int ,void*,int,int) ;

int lsm_csr_seek(lsm_cursor *pCsr, const void *pKey, int nKey, int eSeek){
  return lsmMCursorSeek((MultiCursor *)pCsr, 0, (void *)pKey, nKey, eSeek);
}
