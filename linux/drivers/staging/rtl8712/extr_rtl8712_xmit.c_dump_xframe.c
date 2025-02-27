
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct xmit_priv {int frag_len; } ;
struct pkt_attrib {int ether_type; int nr_frags; int icv_len; int last_txcmdsz; int priority; } ;
struct xmit_frame {int* last; int* bpending; int * mem_addr; int * buf_addr; struct pkt_attrib attrib; } ;
struct security_priv {scalar_t__ sw_encrypt; } ;
struct _adapter {struct security_priv securitypriv; struct xmit_priv xmitpriv; } ;
typedef int addr_t ;


 scalar_t__ RND4 (int ) ;
 int RTL8712_DMA_H2CCMD ;
 int TXDESC_SIZE ;
 int get_ff_hwaddr (struct xmit_frame*) ;
 int r8712_issue_addbareq_cmd (struct _adapter*,int ) ;
 int r8712_write_port (struct _adapter*,int ,int,unsigned char*) ;
 int update_txdesc (struct xmit_frame*,int *,int) ;

__attribute__((used)) static void dump_xframe(struct _adapter *padapter,
   struct xmit_frame *pxmitframe)
{
 int t, sz, w_sz;
 u8 *mem_addr;
 u32 ff_hwaddr;
 struct pkt_attrib *pattrib = &pxmitframe->attrib;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct security_priv *psecuritypriv = &padapter->securitypriv;

 if (pxmitframe->attrib.ether_type != 0x0806) {
  if (pxmitframe->attrib.ether_type != 0x888e)
   r8712_issue_addbareq_cmd(padapter, pattrib->priority);
 }
 mem_addr = pxmitframe->buf_addr;
 for (t = 0; t < pattrib->nr_frags; t++) {
  if (t != (pattrib->nr_frags - 1)) {
   sz = pxmitpriv->frag_len;
   sz = sz - 4 - (psecuritypriv->sw_encrypt ? 0 :
        pattrib->icv_len);
   pxmitframe->last[t] = 0;
  } else {
   sz = pattrib->last_txcmdsz;
   pxmitframe->last[t] = 1;
  }
  update_txdesc(pxmitframe, (uint *)mem_addr, sz);
  w_sz = sz + TXDESC_SIZE;
  pxmitframe->mem_addr = mem_addr;
  pxmitframe->bpending[t] = 0;
  ff_hwaddr = get_ff_hwaddr(pxmitframe);




  r8712_write_port(padapter, ff_hwaddr, w_sz,
      (unsigned char *)pxmitframe);

  mem_addr += w_sz;
  mem_addr = (u8 *)RND4(((addr_t)(mem_addr)));
 }
}
