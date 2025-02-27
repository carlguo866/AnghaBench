
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct uio {scalar_t__ uio_segflg; int uio_iovcnt; int uio_resid; size_t uio_offset; int uio_rw; struct iovec* uio_iov; int uio_td; } ;
struct thread {int td_pflags; int td_ma; int td_ma_cnt; } ;
struct iovec {char* iov_base; int iov_len; } ;


 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int TDP_UIOHELD ;

 scalar_t__ UIO_SYSSPACE ;
 scalar_t__ UIO_USERSPACE ;

 struct thread* curthread ;
 int uiomove (char*,int,struct uio*) ;
 int uiomove_fromphys (int,int,int,struct uio*) ;

int
vn_io_fault_uiomove(char *data, int xfersize, struct uio *uio)
{
 struct uio transp_uio;
 struct iovec transp_iov[1];
 struct thread *td;
 size_t adv;
 int error, pgadv;

 td = curthread;
 if ((td->td_pflags & TDP_UIOHELD) == 0 ||
     uio->uio_segflg != UIO_USERSPACE)
  return (uiomove(data, xfersize, uio));

 KASSERT(uio->uio_iovcnt == 1, ("uio_iovcnt %d", uio->uio_iovcnt));
 transp_iov[0].iov_base = data;
 transp_uio.uio_iov = &transp_iov[0];
 transp_uio.uio_iovcnt = 1;
 if (xfersize > uio->uio_resid)
  xfersize = uio->uio_resid;
 transp_uio.uio_resid = transp_iov[0].iov_len = xfersize;
 transp_uio.uio_offset = 0;
 transp_uio.uio_segflg = UIO_SYSSPACE;






 switch (uio->uio_rw) {
 case 128:
  transp_uio.uio_rw = 129;
  break;
 case 129:
  transp_uio.uio_rw = 128;
  break;
 }
 transp_uio.uio_td = uio->uio_td;
 error = uiomove_fromphys(td->td_ma,
     ((vm_offset_t)uio->uio_iov->iov_base) & PAGE_MASK,
     xfersize, &transp_uio);
 adv = xfersize - transp_uio.uio_resid;
 pgadv =
     (((vm_offset_t)uio->uio_iov->iov_base + adv) >> PAGE_SHIFT) -
     (((vm_offset_t)uio->uio_iov->iov_base) >> PAGE_SHIFT);
 td->td_ma += pgadv;
 KASSERT(td->td_ma_cnt >= pgadv, ("consumed pages %d %d", td->td_ma_cnt,
     pgadv));
 td->td_ma_cnt -= pgadv;
 uio->uio_iov->iov_base = (char *)uio->uio_iov->iov_base + adv;
 uio->uio_iov->iov_len -= adv;
 uio->uio_resid -= adv;
 uio->uio_offset += adv;
 return (error);
}
