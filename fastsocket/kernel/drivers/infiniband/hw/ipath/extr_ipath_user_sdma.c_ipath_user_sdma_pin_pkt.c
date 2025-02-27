
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_user_sdma_queue {int dummy; } ;
struct ipath_user_sdma_pkt {unsigned long naddr; } ;
struct ipath_devdata {TYPE_1__* pcidev; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_2__ {int dev; } ;


 int ipath_user_sdma_free_pkt_frag (int *,struct ipath_user_sdma_queue*,struct ipath_user_sdma_pkt*,unsigned long) ;
 int ipath_user_sdma_num_pages (struct iovec const*) ;
 int ipath_user_sdma_pin_pages (struct ipath_devdata const*,struct ipath_user_sdma_pkt*,unsigned long const,int ,int const) ;

__attribute__((used)) static int ipath_user_sdma_pin_pkt(const struct ipath_devdata *dd,
       struct ipath_user_sdma_queue *pq,
       struct ipath_user_sdma_pkt *pkt,
       const struct iovec *iov,
       unsigned long niov)
{
 int ret = 0;
 unsigned long idx;

 for (idx = 0; idx < niov; idx++) {
  const int npages = ipath_user_sdma_num_pages(iov + idx);
  const unsigned long addr = (unsigned long) iov[idx].iov_base;

  ret = ipath_user_sdma_pin_pages(dd, pkt,
      addr, iov[idx].iov_len,
      npages);
  if (ret < 0)
   goto free_pkt;
 }

 goto done;

free_pkt:
 for (idx = 0; idx < pkt->naddr; idx++)
  ipath_user_sdma_free_pkt_frag(&dd->pcidev->dev, pq, pkt, idx);

done:
 return ret;
}
