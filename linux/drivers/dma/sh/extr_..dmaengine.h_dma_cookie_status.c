
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_tx_state {scalar_t__ residue; void* used; void* last; } ;
struct dma_chan {void* completed_cookie; void* cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef void* dma_cookie_t ;


 int barrier () ;
 int dma_async_is_complete (void*,void*,void*) ;

__attribute__((used)) static inline enum dma_status dma_cookie_status(struct dma_chan *chan,
 dma_cookie_t cookie, struct dma_tx_state *state)
{
 dma_cookie_t used, complete;

 used = chan->cookie;
 complete = chan->completed_cookie;
 barrier();
 if (state) {
  state->last = complete;
  state->used = used;
  state->residue = 0;
 }
 return dma_async_is_complete(cookie, complete, used);
}
