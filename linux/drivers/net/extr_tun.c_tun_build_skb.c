
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct xdp_buff {char* data_hard_start; char* data; char* data_end; int * rxq; } ;
struct virtio_net_hdr {scalar_t__ gso_type; } ;
struct tun_struct {int xdp_prog; } ;
struct tun_file {int xdp_rxq; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct page_frag {int offset; int page; } ;
struct iov_iter {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {struct page_frag task_frag; } ;


 int ALIGN (int ,int ) ;
 int EFAULT ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int SKB_DATA_ALIGN (int) ;
 int SMP_CACHE_BYTES ;
 int TUN_RX_PAD ;
 scalar_t__ XDP_PACKET_HEADROOM ;
 int XDP_PASS ;
 scalar_t__ XDP_REDIRECT ;
 scalar_t__ XDP_TX ;
 struct sk_buff* __tun_build_skb (struct tun_file*,struct page_frag*,char*,int,int,int) ;
 scalar_t__ bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 size_t copy_page_from_iter (int ,int,int,struct iov_iter*) ;
 TYPE_1__* current ;
 int get_page (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 scalar_t__ page_address (int ) ;
 int put_page (int ) ;
 struct bpf_prog* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_page_frag_refill (int,struct page_frag*,int ) ;
 int tun_xdp_act (struct tun_struct*,struct bpf_prog*,struct xdp_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int xdp_do_flush_map () ;
 int xdp_set_data_meta_invalid (struct xdp_buff*) ;

__attribute__((used)) static struct sk_buff *tun_build_skb(struct tun_struct *tun,
         struct tun_file *tfile,
         struct iov_iter *from,
         struct virtio_net_hdr *hdr,
         int len, int *skb_xdp)
{
 struct page_frag *alloc_frag = &current->task_frag;
 struct bpf_prog *xdp_prog;
 int buflen = SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
 char *buf;
 size_t copied;
 int pad = TUN_RX_PAD;
 int err = 0;

 rcu_read_lock();
 xdp_prog = rcu_dereference(tun->xdp_prog);
 if (xdp_prog)
  pad += XDP_PACKET_HEADROOM;
 buflen += SKB_DATA_ALIGN(len + pad);
 rcu_read_unlock();

 alloc_frag->offset = ALIGN((u64)alloc_frag->offset, SMP_CACHE_BYTES);
 if (unlikely(!skb_page_frag_refill(buflen, alloc_frag, GFP_KERNEL)))
  return ERR_PTR(-ENOMEM);

 buf = (char *)page_address(alloc_frag->page) + alloc_frag->offset;
 copied = copy_page_from_iter(alloc_frag->page,
         alloc_frag->offset + pad,
         len, from);
 if (copied != len)
  return ERR_PTR(-EFAULT);





 if (hdr->gso_type || !xdp_prog) {
  *skb_xdp = 1;
  return __tun_build_skb(tfile, alloc_frag, buf, buflen, len,
           pad);
 }

 *skb_xdp = 0;

 local_bh_disable();
 rcu_read_lock();
 xdp_prog = rcu_dereference(tun->xdp_prog);
 if (xdp_prog) {
  struct xdp_buff xdp;
  u32 act;

  xdp.data_hard_start = buf;
  xdp.data = buf + pad;
  xdp_set_data_meta_invalid(&xdp);
  xdp.data_end = xdp.data + len;
  xdp.rxq = &tfile->xdp_rxq;

  act = bpf_prog_run_xdp(xdp_prog, &xdp);
  if (act == XDP_REDIRECT || act == XDP_TX) {
   get_page(alloc_frag->page);
   alloc_frag->offset += buflen;
  }
  err = tun_xdp_act(tun, xdp_prog, &xdp, act);
  if (err < 0)
   goto err_xdp;
  if (err == XDP_REDIRECT)
   xdp_do_flush_map();
  if (err != XDP_PASS)
   goto out;

  pad = xdp.data - xdp.data_hard_start;
  len = xdp.data_end - xdp.data;
 }
 rcu_read_unlock();
 local_bh_enable();

 return __tun_build_skb(tfile, alloc_frag, buf, buflen, len, pad);

err_xdp:
 put_page(alloc_frag->page);
out:
 rcu_read_unlock();
 local_bh_enable();
 return ((void*)0);
}
