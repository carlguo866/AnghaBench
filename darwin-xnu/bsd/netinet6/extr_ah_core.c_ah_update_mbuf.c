
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; struct mbuf* m_next; } ;
struct ah_algorithm_state {int dummy; } ;
struct ah_algorithm {int (* update ) (struct ah_algorithm_state*,scalar_t__,int) ;} ;


 int caddr_t ;
 scalar_t__ mtod (struct mbuf*,int ) ;
 int panic (char*) ;
 int stub1 (struct ah_algorithm_state*,scalar_t__,int) ;
 int stub2 (struct ah_algorithm_state*,scalar_t__,int) ;

__attribute__((used)) static void
ah_update_mbuf(struct mbuf *m,int off, int len,
        const struct ah_algorithm *algo,
        struct ah_algorithm_state *algos)
{
 struct mbuf *n;
 int tlen;


 if (off + len <= m->m_len) {
  (algo->update)(algos, mtod(m, caddr_t) + off, len);
  return;
 }

 for (n = m; n; n = n->m_next) {
  if (off < n->m_len)
   break;

  off -= n->m_len;
 }

 if (!n)
  panic("ah_update_mbuf: wrong offset specified");

 for ( ; n && len > 0; n = n->m_next) {
  if (n->m_len == 0)
   continue;
  if (n->m_len - off < len)
   tlen = n->m_len - off;
  else
   tlen = len;

  (algo->update)(algos, mtod(n, caddr_t) + off, tlen);

  len -= tlen;
  off = 0;
 }
}
