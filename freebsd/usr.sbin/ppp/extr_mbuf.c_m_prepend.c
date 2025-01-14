
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_short ;
struct mbuf {size_t m_offset; size_t m_len; struct mbuf* m_next; int m_type; } ;


 int MBUF_CTOP (struct mbuf*) ;
 int MB_UNKNOWN ;
 struct mbuf* m_get (size_t,int ) ;
 int memcpy (struct mbuf*,void const*,size_t) ;

struct mbuf *
m_prepend(struct mbuf *bp, const void *ptr, size_t len, u_short extra)
{
  struct mbuf *head;

  if (bp && bp->m_offset) {
    if (bp->m_offset >= len) {
      bp->m_offset -= len;
      bp->m_len += len;
      if (ptr)
        memcpy(MBUF_CTOP(bp), ptr, len);
      return bp;
    }
    len -= bp->m_offset;
    if (ptr)
      memcpy(bp + 1, (const char *)ptr + len, bp->m_offset);
    bp->m_len += bp->m_offset;
    bp->m_offset = 0;
  }

  head = m_get(len + extra, bp ? bp->m_type : MB_UNKNOWN);
  head->m_offset = extra;
  head->m_len -= extra;
  if (ptr)
    memcpy(MBUF_CTOP(head), ptr, len);
  head->m_next = bp;

  return head;
}
