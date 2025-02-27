
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mstate ;
typedef int mspace ;


 int USAGE_ERROR_ACTION (int ,int ) ;
 void** ialloc (int ,size_t,size_t*,int ,void**) ;
 int ok_magic (int ) ;

void** mspace_independent_comalloc(mspace msp, size_t n_elements,
       size_t sizes[], void* chunks[]) {
  mstate ms = (mstate)msp;
  if (!ok_magic(ms)) {
    USAGE_ERROR_ACTION(ms,ms);
    return 0;
  }
  return ialloc(ms, n_elements, sizes, 0, chunks);
}
