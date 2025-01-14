
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8_t ;
struct uip_tcp_pcb_listen {scalar_t__ local_port; struct uip_tcp_pcb_listen* next; int local_ip; } ;
struct uip_tcp_pcb {scalar_t__ state; scalar_t__ remote_port; scalar_t__ local_port; scalar_t__ acked; scalar_t__ (* sent ) (int ,struct uip_tcp_pcb*,scalar_t__) ;scalar_t__ (* recv ) (int ,struct uip_tcp_pcb*,int *,scalar_t__) ;int cb_arg; int (* errf ) (int ,int ) ;int local_ip; int remote_ip; struct uip_tcp_pcb* next; } ;
struct uip_tcp_hdr {scalar_t__ src; scalar_t__ dst; scalar_t__ wnd; void* ackno; void* seqno; } ;
struct uip_pbuf {int tot_len; TYPE_2__* payload; } ;
struct uip_netif {int dummy; } ;
typedef scalar_t__ s8_t ;
typedef int s16_t ;
struct TYPE_7__ {int len; struct uip_pbuf* p; struct uip_tcp_hdr* tcphdr; TYPE_2__* dataptr; int * next; } ;
struct TYPE_6__ {int src; int dst; } ;
struct TYPE_5__ {struct uip_tcp_pcb_listen* listen_pcbs; } ;


 scalar_t__ UIP_CLOSED ;
 scalar_t__ UIP_ERR_ABRT ;
 scalar_t__ UIP_ERR_OK ;
 int UIP_ERR_RST ;
 int UIP_IPH_HL (TYPE_2__*) ;
 scalar_t__ UIP_LISTEN ;
 int UIP_LOG (char*) ;
 int UIP_PROTO_TCP ;
 int UIP_TCPH_FLAGS (struct uip_tcp_hdr*) ;
 int UIP_TCPH_HDRLEN (struct uip_tcp_hdr*) ;
 int UIP_TCP_FIN ;
 int UIP_TCP_FLAGS ;
 int UIP_TCP_RST ;
 int UIP_TCP_SYN ;
 int UIP_TF_CLOSED ;
 int UIP_TF_RESET ;
 scalar_t__ UIP_TIME_WAIT ;
 scalar_t__ ip_addr_cmp (int *,int *) ;
 scalar_t__ ip_addr_isany (int *) ;
 scalar_t__ ip_addr_isbroadcast (int *,struct uip_netif*) ;
 scalar_t__ ip_addr_ismulticast (int *) ;
 int memb_free (int *,struct uip_tcp_pcb*) ;
 void* ntohl (void*) ;
 void* ntohs (scalar_t__) ;
 int stub1 (int ,int ) ;
 scalar_t__ stub2 (int ,struct uip_tcp_pcb*,scalar_t__) ;
 scalar_t__ stub3 (int ,struct uip_tcp_pcb*,int *,scalar_t__) ;
 void* uip_ackno ;
 scalar_t__ uip_chksum_pseudo (struct uip_pbuf*,int *,int *,int ,int) ;
 int uip_flags ;
 TYPE_3__ uip_inseg ;
 TYPE_2__* uip_iphdr ;
 int uip_pbuf_free (struct uip_pbuf*) ;
 int uip_pbuf_header (struct uip_pbuf*,int) ;
 int * uip_recv_data ;
 int uip_recv_flags ;
 void* uip_seqno ;
 struct uip_tcp_pcb* uip_tcp_active_pcbs ;
 struct uip_tcp_pcb* uip_tcp_input_pcb ;
 TYPE_1__ uip_tcp_listen_pcbs ;
 int uip_tcp_pcbremove (struct uip_tcp_pcb**,struct uip_tcp_pcb*) ;
 int uip_tcp_pcbs ;
 int uip_tcp_rst (void*,void*,int *,int *,scalar_t__,scalar_t__) ;
 struct uip_tcp_pcb* uip_tcp_tw_pcbs ;
 struct uip_tcp_hdr* uip_tcphdr ;
 int uip_tcpinput_listen (struct uip_tcp_pcb_listen*) ;
 int uip_tcpinput_timewait (struct uip_tcp_pcb*) ;
 int uip_tcplen ;
 int uip_tcpoutput (struct uip_tcp_pcb*) ;
 scalar_t__ uip_tcpprocess (struct uip_tcp_pcb*) ;

void uip_tcpinput(struct uip_pbuf *p,struct uip_netif *inp)
{
 s8_t err;
 u8_t hdr_len;
 struct uip_tcp_pcb *pcb,*prev;
 struct uip_tcp_pcb_listen *lpcb;

 uip_iphdr = p->payload;
 uip_tcphdr = (struct uip_tcp_hdr*)((u8_t*)p->payload+UIP_IPH_HL(uip_iphdr)*4);

 if(uip_pbuf_header(p,-((s16_t)(UIP_IPH_HL(uip_iphdr)*4))) || p->tot_len<sizeof(struct uip_tcp_hdr)) {
  UIP_LOG("uip_tcpinput: short packet discarded.");
  uip_pbuf_free(p);
  return;
 }
 if(ip_addr_isbroadcast(&uip_iphdr->dst,inp) ||
  ip_addr_ismulticast(&uip_iphdr->dst)) {
  uip_pbuf_free(p);
  return;
 }

 if(uip_chksum_pseudo(p,&uip_iphdr->src,&uip_iphdr->dst,UIP_PROTO_TCP,p->tot_len)!=0) {
  UIP_LOG("uip_tcpinput: packet discarded due to failing checksum.");
  uip_pbuf_free(p);
  return;
 }

 hdr_len = UIP_TCPH_HDRLEN(uip_tcphdr);
 uip_pbuf_header(p,-(hdr_len*4));

 uip_tcphdr->src = ntohs(uip_tcphdr->src);
 uip_tcphdr->dst = ntohs(uip_tcphdr->dst);
 uip_seqno = uip_tcphdr->seqno = ntohl(uip_tcphdr->seqno);
 uip_ackno = uip_tcphdr->ackno = ntohl(uip_tcphdr->ackno);
 uip_tcphdr->wnd = ntohs(uip_tcphdr->wnd);

 uip_flags = UIP_TCPH_FLAGS(uip_tcphdr)&UIP_TCP_FLAGS;
 uip_tcplen = p->tot_len+((uip_flags&UIP_TCP_FIN||uip_flags&UIP_TCP_SYN)?1:0);

 prev = ((void*)0);
 for(pcb=uip_tcp_active_pcbs;pcb!=((void*)0);pcb=pcb->next) {
  if(pcb->state!=UIP_CLOSED && pcb->state!=UIP_TIME_WAIT && pcb->state!=UIP_LISTEN) {
   if(pcb->remote_port==uip_tcphdr->src &&
    pcb->local_port==uip_tcphdr->dst &&
    ip_addr_cmp(&pcb->remote_ip,&uip_iphdr->src) &&
    ip_addr_cmp(&pcb->local_ip,&uip_iphdr->dst)) {
    if(prev!=((void*)0)) {
     prev->next = pcb->next;
     pcb->next = uip_tcp_active_pcbs;
     uip_tcp_active_pcbs = pcb;
    }
    break;
   }
   prev = pcb;
  }
 }

 if(pcb==((void*)0)) {
  for(pcb=uip_tcp_tw_pcbs;pcb!=((void*)0);pcb=pcb->next) {
   if(pcb->state==UIP_TIME_WAIT &&
    pcb->remote_port==uip_tcphdr->src &&
    pcb->local_port==uip_tcphdr->dst &&
    ip_addr_cmp(&pcb->remote_ip,&uip_iphdr->src) &&
    ip_addr_cmp(&pcb->local_ip,&uip_iphdr->dst)) {
    uip_tcpinput_timewait(pcb);
    return;
   }
  }

  prev = ((void*)0);
  for(lpcb=uip_tcp_listen_pcbs.listen_pcbs;lpcb!=((void*)0);lpcb=lpcb->next) {
   if((ip_addr_isany(&lpcb->local_ip) || ip_addr_cmp(&lpcb->local_ip,&uip_iphdr->dst)) &&
    lpcb->local_port==uip_tcphdr->dst) {
    if(prev!=((void*)0)) {
     ((struct uip_tcp_pcb_listen*)prev)->next = lpcb->next;
     lpcb->next = uip_tcp_listen_pcbs.listen_pcbs;
     uip_tcp_listen_pcbs.listen_pcbs = lpcb;
    }
    uip_tcpinput_listen(lpcb);
    return;
   }
   prev = (struct uip_tcp_pcb*)lpcb;
  }
 }

 if(pcb!=((void*)0)) {
  uip_inseg.next = ((void*)0);
  uip_inseg.len = p->tot_len;
  uip_inseg.dataptr = p->payload;
  uip_inseg.p = p;
  uip_inseg.tcphdr = uip_tcphdr;

  uip_recv_data = ((void*)0);
  uip_recv_flags = 0;

  uip_tcp_input_pcb = pcb;
  err = uip_tcpprocess(pcb);
  uip_tcp_input_pcb = ((void*)0);

  if(err!=UIP_ERR_ABRT) {
   if(uip_recv_flags&UIP_TF_RESET) {
    if(pcb->errf) pcb->errf(pcb->cb_arg,UIP_ERR_RST);
    uip_tcp_pcbremove(&uip_tcp_active_pcbs,pcb);
    memb_free(&uip_tcp_pcbs,pcb);
   } else if(uip_recv_flags&UIP_TF_CLOSED) {
    uip_tcp_pcbremove(&uip_tcp_active_pcbs,pcb);
    memb_free(&uip_tcp_pcbs,pcb);
   } else {
    err = UIP_ERR_OK;

    if(pcb->acked>0) {
     if(pcb->sent) err = pcb->sent(pcb->cb_arg,pcb,pcb->acked);
    }

    if(uip_recv_data!=((void*)0)) {
     if(pcb->recv) err = pcb->recv(pcb->cb_arg,pcb,uip_recv_data,UIP_ERR_OK);
    }

    if(err==UIP_ERR_OK) uip_tcpoutput(pcb);
   }
  }
  if(uip_inseg.p!=((void*)0)) uip_pbuf_free(uip_inseg.p);
 } else {
  if(!(UIP_TCPH_FLAGS(uip_tcphdr)&UIP_TCP_RST))
   uip_tcp_rst(uip_ackno,uip_seqno+uip_tcplen,&uip_iphdr->dst,&uip_iphdr->src,uip_tcphdr->dst,uip_tcphdr->src);

  uip_pbuf_free(p);
 }
}
