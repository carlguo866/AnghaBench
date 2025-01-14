
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
struct uio {int dummy; } ;
struct mbuf_ext_pgs {int hdr_len; int first_pg_off; int npgs; int trail_len; int * trail; int * pa; int * hdr; } ;
struct TYPE_2__ {struct mbuf_ext_pgs* ext_pgs; } ;
struct mbuf {TYPE_1__ m_ext; } ;


 int KASSERT (int,char*) ;
 int MBUF_EXT_PGS_ASSERT (struct mbuf const*) ;
 int PHYS_TO_VM_PAGE (int ) ;
 int mbuf_ext_pg_len (struct mbuf_ext_pgs*,int,int) ;
 int min (int,int) ;
 int mtod (struct mbuf const*,int ) ;
 int uiomove (int *,int,struct uio*) ;
 int uiomove_fromphys (int *,int,int,struct uio*) ;
 int vm_offset_t ;

int
m_unmappedtouio(const struct mbuf *m, int m_off, struct uio *uio, int len)
{
 struct mbuf_ext_pgs *ext_pgs;
 vm_page_t pg;
 int error, i, off, pglen, pgoff, seglen, segoff;

 MBUF_EXT_PGS_ASSERT(m);
 ext_pgs = m->m_ext.ext_pgs;
 error = 0;


 off = mtod(m, vm_offset_t);

 off += m_off;
 if (ext_pgs->hdr_len != 0) {
  if (off >= ext_pgs->hdr_len) {
   off -= ext_pgs->hdr_len;
  } else {
   seglen = ext_pgs->hdr_len - off;
   segoff = off;
   seglen = min(seglen, len);
   off = 0;
   len -= seglen;
   error = uiomove(&ext_pgs->hdr[segoff], seglen, uio);
  }
 }
 pgoff = ext_pgs->first_pg_off;
 for (i = 0; i < ext_pgs->npgs && error == 0 && len > 0; i++) {
  pglen = mbuf_ext_pg_len(ext_pgs, i, pgoff);
  if (off >= pglen) {
   off -= pglen;
   pgoff = 0;
   continue;
  }
  seglen = pglen - off;
  segoff = pgoff + off;
  off = 0;
  seglen = min(seglen, len);
  len -= seglen;
  pg = PHYS_TO_VM_PAGE(ext_pgs->pa[i]);
  error = uiomove_fromphys(&pg, segoff, seglen, uio);
  pgoff = 0;
 };
 if (len != 0 && error == 0) {
  KASSERT((off + len) <= ext_pgs->trail_len,
      ("off + len > trail (%d + %d > %d, m_off = %d)", off, len,
      ext_pgs->trail_len, m_off));
  error = uiomove(&ext_pgs->trail[off], len, uio);
 }
 return (error);
}
