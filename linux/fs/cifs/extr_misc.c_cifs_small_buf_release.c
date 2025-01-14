
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FYI ;
 int atomic_dec (int *) ;
 int cifs_dbg (int ,char*) ;
 int cifs_sm_req_poolp ;
 int mempool_free (void*,int ) ;
 int smBufAllocCount ;

void
cifs_small_buf_release(void *buf_to_free)
{

 if (buf_to_free == ((void*)0)) {
  cifs_dbg(FYI, "Null buffer passed to cifs_small_buf_release\n");
  return;
 }
 mempool_free(buf_to_free, cifs_sm_req_poolp);

 atomic_dec(&smBufAllocCount);
 return;
}
