
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; scalar_t__ m_data; TYPE_1__ m_pkthdr; int m_type; } ;


 int KASSERT (int,char*) ;
 int MBUF_CHECKSLEEP (int) ;
 int M_COPYALL ;
 int M_EXT ;
 int M_PKTHDR ;
 int bcopy (scalar_t__,scalar_t__,int ) ;
 int caddr_t ;
 int m_dup_pkthdr (struct mbuf*,struct mbuf*,int) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_get (int,int ) ;
 struct mbuf* m_gethdr (int,int ) ;
 int mb_dupcl (struct mbuf*,struct mbuf*) ;
 int min (int,int) ;
 scalar_t__ mtod (struct mbuf*,int ) ;

struct mbuf *
m_copym(struct mbuf *m, int off0, int len, int wait)
{
 struct mbuf *n, **np;
 int off = off0;
 struct mbuf *top;
 int copyhdr = 0;

 KASSERT(off >= 0, ("m_copym, negative off %d", off));
 KASSERT(len >= 0, ("m_copym, negative len %d", len));
 MBUF_CHECKSLEEP(wait);
 if (off == 0 && m->m_flags & M_PKTHDR)
  copyhdr = 1;
 while (off > 0) {
  KASSERT(m != ((void*)0), ("m_copym, offset > size of mbuf chain"));
  if (off < m->m_len)
   break;
  off -= m->m_len;
  m = m->m_next;
 }
 np = &top;
 top = ((void*)0);
 while (len > 0) {
  if (m == ((void*)0)) {
   KASSERT(len == M_COPYALL,
       ("m_copym, length > size of mbuf chain"));
   break;
  }
  if (copyhdr)
   n = m_gethdr(wait, m->m_type);
  else
   n = m_get(wait, m->m_type);
  *np = n;
  if (n == ((void*)0))
   goto nospace;
  if (copyhdr) {
   if (!m_dup_pkthdr(n, m, wait))
    goto nospace;
   if (len == M_COPYALL)
    n->m_pkthdr.len -= off0;
   else
    n->m_pkthdr.len = len;
   copyhdr = 0;
  }
  n->m_len = min(len, m->m_len - off);
  if (m->m_flags & M_EXT) {
   n->m_data = m->m_data + off;
   mb_dupcl(n, m);
  } else
   bcopy(mtod(m, caddr_t)+off, mtod(n, caddr_t),
       (u_int)n->m_len);
  if (len != M_COPYALL)
   len -= n->m_len;
  off = 0;
  m = m->m_next;
  np = &n->m_next;
 }

 return (top);
nospace:
 m_freem(top);
 return (((void*)0));
}
