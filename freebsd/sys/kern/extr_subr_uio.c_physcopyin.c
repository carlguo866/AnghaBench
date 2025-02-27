
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
struct uio {int uio_iovcnt; size_t uio_resid; int uio_rw; int uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct iovec {size_t iov_len; void* iov_base; } ;


 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_PAGE_COUNT (size_t) ;
 int PHYS_TO_VM_PAGE (int) ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int uiomove_fromphys (int *,int,size_t,struct uio*) ;

int
physcopyin(void *src, vm_paddr_t dst, size_t len)
{
 vm_page_t m[PHYS_PAGE_COUNT(len)];
 struct iovec iov[1];
 struct uio uio;
 int i;

 iov[0].iov_base = src;
 iov[0].iov_len = len;
 uio.uio_iov = iov;
 uio.uio_iovcnt = 1;
 uio.uio_offset = 0;
 uio.uio_resid = len;
 uio.uio_segflg = UIO_SYSSPACE;
 uio.uio_rw = UIO_WRITE;
 for (i = 0; i < PHYS_PAGE_COUNT(len); i++, dst += PAGE_SIZE)
  m[i] = PHYS_TO_VM_PAGE(dst);
 return (uiomove_fromphys(m, dst & PAGE_MASK, len, &uio));
}
