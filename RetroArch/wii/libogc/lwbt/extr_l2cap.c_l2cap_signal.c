
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct pbuf {int tot_len; struct l2cap_hdr* payload; } ;
struct l2cap_sig_hdr {int code; int id; void* len; } ;
struct l2cap_sig {struct pbuf* p; int sigid; int nrtx; int rtx; } ;
struct l2cap_pcb {int unrsp_sigs; } ;
struct l2cap_hdr {void* cid; void* len; } ;
struct bd_addr {int dummy; } ;
typedef scalar_t__ err_t ;


 int ERROR (char*) ;
 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 int L2CAP_HDR_LEN ;
 int L2CAP_MAXRTX ;
 int L2CAP_RTX ;
 int L2CAP_SIGHDR_LEN ;
 int L2CAP_SIG_CID ;
 int L2CAP_SIG_REG (int *,struct l2cap_sig*) ;
 int LOG (char*,int,...) ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct l2cap_sig* btmemb_alloc (int *) ;
 int btmemb_free (int *,struct l2cap_sig*) ;
 struct pbuf* btpbuf_alloc (int ,int,int ) ;
 int btpbuf_chain (struct pbuf*,struct pbuf*) ;
 int btpbuf_free (struct pbuf*) ;
 void* htole16 (int) ;
 int l2cap_next_sigid () ;
 int l2cap_sigs ;
 scalar_t__ l2cap_write (struct bd_addr*,struct pbuf*,int) ;

err_t l2cap_signal(struct l2cap_pcb *pcb, u8_t code, u16_t ursp_id, struct bd_addr *remote_bdaddr, struct pbuf *data)
{
 struct l2cap_sig *sig;
 struct l2cap_sig_hdr *sighdr;
 struct l2cap_hdr *hdr;
 err_t ret;


 LOG("l2cap_signal: Allocate memory for l2cap_sig. Code = 0x%x\n", code);
 if((sig = btmemb_alloc(&l2cap_sigs)) == ((void*)0)) {
  ERROR("l2cap_signal: could not allocate memory for l2cap_sig\n");
  return ERR_MEM;
 }


 if((sig->p = btpbuf_alloc(PBUF_RAW, L2CAP_HDR_LEN+L2CAP_SIGHDR_LEN, PBUF_RAM)) == ((void*)0)) {
  ERROR("l2cap_signal: could not allocate memory for pbuf\n");
  return ERR_MEM;
 }


 sighdr = (struct l2cap_sig_hdr *)(((u8_t *)sig->p->payload)+L2CAP_HDR_LEN);


 if(data == ((void*)0)) {
  sighdr->len = 0;
 } else {
  btpbuf_chain(sig->p, data);
  btpbuf_free(data);
  sighdr->len = htole16(data->tot_len);
 }

 sighdr->code = code;

 if(sighdr->code % 2) {
  sig->sigid = ursp_id;
  LOG("l2cap_signal: Sending response/reject signal with id = %d code = %d\n", sig->sigid, sighdr->code);
 } else {
  sig->sigid = l2cap_next_sigid();
  sig->rtx = L2CAP_RTX;

  sig->nrtx = L2CAP_MAXRTX;
  LOG("l2cap_signal: Sending request signal with id = %d code = %d\n", sig->sigid, sighdr->code);
 }
 sighdr->id = sig->sigid;


 hdr = sig->p->payload;
 hdr->len = htole16((sig->p->tot_len - L2CAP_HDR_LEN));
 hdr->cid = htole16(L2CAP_SIG_CID);

 ret = l2cap_write(remote_bdaddr, sig->p, sig->p->tot_len);


 if(ret == ERR_OK && (sighdr->code % 2) == 0) {
  LOG("l2cap_signal: Registering sent request signal with id = %d code = %d\n", sig->sigid, sighdr->code);
  L2CAP_SIG_REG(&(pcb->unrsp_sigs), sig);
 } else {
  LOG("l2cap_signal: Deallocating sent response/reject signal with id = %d code = %d\n", sig->sigid, sighdr->code);
  btpbuf_free(sig->p);
  sig->p = ((void*)0);
  btmemb_free(&l2cap_sigs, sig);
 }

  return ret;
}
