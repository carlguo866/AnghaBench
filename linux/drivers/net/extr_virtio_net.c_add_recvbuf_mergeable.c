
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int dummy; } ;
struct skb_shared_info {int dummy; } ;
struct page_frag {int offset; unsigned int size; int page; } ;
struct receive_queue {int sg; int vq; int mrg_avg_pkt_len; struct page_frag alloc_frag; } ;
typedef int gfp_t ;


 int ENOMEM ;
 unsigned int SKB_DATA_ALIGN (unsigned int) ;
 unsigned int get_mergeable_buf_len (struct receive_queue*,int *,unsigned int) ;
 int get_page (int ) ;
 void* mergeable_len_to_ctx (unsigned int,unsigned int) ;
 scalar_t__ page_address (int ) ;
 int put_page (int ) ;
 int sg_init_one (int ,char*,unsigned int) ;
 int skb_page_frag_refill (unsigned int,struct page_frag*,int ) ;
 scalar_t__ unlikely (int) ;
 int virt_to_head_page (char*) ;
 unsigned int virtnet_get_headroom (struct virtnet_info*) ;
 int virtqueue_add_inbuf_ctx (int ,int ,int,char*,void*,int ) ;

__attribute__((used)) static int add_recvbuf_mergeable(struct virtnet_info *vi,
     struct receive_queue *rq, gfp_t gfp)
{
 struct page_frag *alloc_frag = &rq->alloc_frag;
 unsigned int headroom = virtnet_get_headroom(vi);
 unsigned int tailroom = headroom ? sizeof(struct skb_shared_info) : 0;
 unsigned int room = SKB_DATA_ALIGN(headroom + tailroom);
 char *buf;
 void *ctx;
 int err;
 unsigned int len, hole;





 len = get_mergeable_buf_len(rq, &rq->mrg_avg_pkt_len, room);
 if (unlikely(!skb_page_frag_refill(len + room, alloc_frag, gfp)))
  return -ENOMEM;

 buf = (char *)page_address(alloc_frag->page) + alloc_frag->offset;
 buf += headroom;
 get_page(alloc_frag->page);
 alloc_frag->offset += len + room;
 hole = alloc_frag->size - alloc_frag->offset;
 if (hole < len + room) {




  len += hole;
  alloc_frag->offset += hole;
 }

 sg_init_one(rq->sg, buf, len);
 ctx = mergeable_len_to_ctx(len, headroom);
 err = virtqueue_add_inbuf_ctx(rq->vq, rq->sg, 1, buf, ctx, gfp);
 if (err < 0)
  put_page(virt_to_head_page(buf));

 return err;
}
