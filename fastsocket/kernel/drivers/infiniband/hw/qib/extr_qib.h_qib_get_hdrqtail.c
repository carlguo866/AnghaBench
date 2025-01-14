
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qib_devdata {int flags; int rhf_offset; } ;
struct qib_ctxtdata {int head; scalar_t__ seq_cnt; scalar_t__ rcvhdrq; struct qib_devdata* dd; } ;
typedef int __le32 ;


 int QIB_NODMA_RTAIL ;
 scalar_t__ qib_get_rcvhdrtail (struct qib_ctxtdata const*) ;
 scalar_t__ qib_hdrget_seq (int *) ;

__attribute__((used)) static inline u32 qib_get_hdrqtail(const struct qib_ctxtdata *rcd)
{
 const struct qib_devdata *dd = rcd->dd;
 u32 hdrqtail;

 if (dd->flags & QIB_NODMA_RTAIL) {
  __le32 *rhf_addr;
  u32 seq;

  rhf_addr = (__le32 *) rcd->rcvhdrq +
   rcd->head + dd->rhf_offset;
  seq = qib_hdrget_seq(rhf_addr);
  hdrqtail = rcd->head;
  if (seq == rcd->seq_cnt)
   hdrqtail++;
 } else
  hdrqtail = qib_get_rcvhdrtail(rcd);

 return hdrqtail;
}
