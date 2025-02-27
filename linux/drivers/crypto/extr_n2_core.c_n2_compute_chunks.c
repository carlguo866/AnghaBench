
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct n2_crypto_chunk {unsigned long iv_paddr; size_t arr_len; unsigned long dest_paddr; unsigned long dest_final; int entry; TYPE_3__* arr; } ;
struct TYPE_5__ {unsigned long offset; int page; } ;
struct TYPE_4__ {unsigned long offset; int page; } ;
struct ablkcipher_walk {int nbytes; int blocksize; TYPE_2__ dst; TYPE_1__ src; } ;
struct n2_request_context {int chunk_list; struct n2_crypto_chunk chunk; struct ablkcipher_walk walk; } ;
struct ablkcipher_request {int nbytes; int src; int dst; } ;
struct TYPE_6__ {unsigned long src_paddr; int src_len; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 size_t N2_CHUNK_ARR_LEN ;
 struct n2_request_context* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int ablkcipher_walk_done (struct ablkcipher_request*,struct ablkcipher_walk*,int) ;
 int ablkcipher_walk_init (struct ablkcipher_walk*,int ,int ,int ) ;
 int ablkcipher_walk_phys (struct ablkcipher_request*,struct ablkcipher_walk*) ;
 int cipher_descriptor_len (int,int ) ;
 struct n2_crypto_chunk* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 unsigned long page_to_phys (int ) ;

__attribute__((used)) static int n2_compute_chunks(struct ablkcipher_request *req)
{
 struct n2_request_context *rctx = ablkcipher_request_ctx(req);
 struct ablkcipher_walk *walk = &rctx->walk;
 struct n2_crypto_chunk *chunk;
 unsigned long dest_prev;
 unsigned int tot_len;
 bool prev_in_place;
 int err, nbytes;

 ablkcipher_walk_init(walk, req->dst, req->src, req->nbytes);
 err = ablkcipher_walk_phys(req, walk);
 if (err)
  return err;

 INIT_LIST_HEAD(&rctx->chunk_list);

 chunk = &rctx->chunk;
 INIT_LIST_HEAD(&chunk->entry);

 chunk->iv_paddr = 0UL;
 chunk->arr_len = 0;
 chunk->dest_paddr = 0UL;

 prev_in_place = 0;
 dest_prev = ~0UL;
 tot_len = 0;

 while ((nbytes = walk->nbytes) != 0) {
  unsigned long dest_paddr, src_paddr;
  bool in_place;
  int this_len;

  src_paddr = (page_to_phys(walk->src.page) +
        walk->src.offset);
  dest_paddr = (page_to_phys(walk->dst.page) +
         walk->dst.offset);
  in_place = (src_paddr == dest_paddr);
  this_len = cipher_descriptor_len(nbytes, walk->blocksize);

  if (chunk->arr_len != 0) {
   if (in_place != prev_in_place ||
       (!prev_in_place &&
        dest_paddr != dest_prev) ||
       chunk->arr_len == N2_CHUNK_ARR_LEN ||
       tot_len + this_len > (1 << 16)) {
    chunk->dest_final = dest_prev;
    list_add_tail(&chunk->entry,
           &rctx->chunk_list);
    chunk = kzalloc(sizeof(*chunk), GFP_ATOMIC);
    if (!chunk) {
     err = -ENOMEM;
     break;
    }
    INIT_LIST_HEAD(&chunk->entry);
   }
  }
  if (chunk->arr_len == 0) {
   chunk->dest_paddr = dest_paddr;
   tot_len = 0;
  }
  chunk->arr[chunk->arr_len].src_paddr = src_paddr;
  chunk->arr[chunk->arr_len].src_len = this_len;
  chunk->arr_len++;

  dest_prev = dest_paddr + this_len;
  prev_in_place = in_place;
  tot_len += this_len;

  err = ablkcipher_walk_done(req, walk, nbytes - this_len);
  if (err)
   break;
 }
 if (!err && chunk->arr_len != 0) {
  chunk->dest_final = dest_prev;
  list_add_tail(&chunk->entry, &rctx->chunk_list);
 }

 return err;
}
