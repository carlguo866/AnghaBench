
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hns3_enet_ring {int dummy; } ;
struct hns3_desc_cb {int type; int length; int buf; scalar_t__ reuse_flag; scalar_t__ page_offset; struct page* priv; } ;


 int DESC_TYPE_PAGE ;
 int ENOMEM ;
 struct page* dev_alloc_pages (unsigned int) ;
 unsigned int hns3_page_order (struct hns3_enet_ring*) ;
 int hns3_page_size (struct hns3_enet_ring*) ;
 int page_address (struct page*) ;

__attribute__((used)) static int hns3_alloc_buffer(struct hns3_enet_ring *ring,
        struct hns3_desc_cb *cb)
{
 unsigned int order = hns3_page_order(ring);
 struct page *p;

 p = dev_alloc_pages(order);
 if (!p)
  return -ENOMEM;

 cb->priv = p;
 cb->page_offset = 0;
 cb->reuse_flag = 0;
 cb->buf = page_address(p);
 cb->length = hns3_page_size(ring);
 cb->type = DESC_TYPE_PAGE;

 return 0;
}
