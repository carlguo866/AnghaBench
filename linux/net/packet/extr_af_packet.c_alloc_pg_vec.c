
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpacket_req {unsigned int tp_block_nr; } ;
struct pgv {int buffer; } ;


 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 int alloc_one_pg_vec_page (int) ;
 int free_pg_vec (struct pgv*,int,unsigned int) ;
 struct pgv* kcalloc (unsigned int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct pgv *alloc_pg_vec(struct tpacket_req *req, int order)
{
 unsigned int block_nr = req->tp_block_nr;
 struct pgv *pg_vec;
 int i;

 pg_vec = kcalloc(block_nr, sizeof(struct pgv), GFP_KERNEL | __GFP_NOWARN);
 if (unlikely(!pg_vec))
  goto out;

 for (i = 0; i < block_nr; i++) {
  pg_vec[i].buffer = alloc_one_pg_vec_page(order);
  if (unlikely(!pg_vec[i].buffer))
   goto out_free_pgvec;
 }

out:
 return pg_vec;

out_free_pgvec:
 free_pg_vec(pg_vec, order, block_nr);
 pg_vec = ((void*)0);
 goto out;
}
