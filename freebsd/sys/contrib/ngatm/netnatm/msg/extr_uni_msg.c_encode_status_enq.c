
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union uni_ieall {int dummy; } uni_ieall ;
typedef int u_int ;
struct unicx {int dummy; } ;
struct TYPE_7__ {int present; } ;
struct TYPE_8__ {TYPE_3__ h; } ;
struct TYPE_5__ {int present; } ;
struct TYPE_6__ {TYPE_1__ h; } ;
struct uni_status_enq {TYPE_4__ unrec; TYPE_2__ epref; int hdr; } ;
struct uni_msg {int* b_buf; int b_wptr; int b_rptr; } ;


 int UNI_IE_EPREF ;
 int UNI_IE_PRESENT ;
 int UNI_IE_UNREC ;
 int UNI_STATUS_ENQ ;
 scalar_t__ uni_encode_ie (int,struct uni_msg*,union uni_ieall*,struct unicx*) ;
 scalar_t__ uni_encode_msg_hdr (struct uni_msg*,int *,int ,struct unicx*,int*) ;

__attribute__((used)) static int
encode_status_enq(struct uni_msg *msg, struct uni_status_enq *p, struct unicx *cx)
{
 u_int mlen;

 if(uni_encode_msg_hdr(msg, &p->hdr, UNI_STATUS_ENQ, cx, &mlen))
  return (-2);

 if((p->epref.h.present & UNI_IE_PRESENT) &&
    uni_encode_ie(UNI_IE_EPREF, msg, (union uni_ieall *)&p->epref, cx))
  return (UNI_IE_EPREF);
 if((p->unrec.h.present & UNI_IE_PRESENT) &&
    uni_encode_ie(UNI_IE_UNREC, msg, (union uni_ieall *)&p->unrec, cx))
  return (UNI_IE_UNREC);

 msg->b_buf[mlen+0] = ((msg->b_wptr-msg->b_rptr)-mlen-2) >> 8;
 msg->b_buf[mlen+1] = ((msg->b_wptr-msg->b_rptr)-mlen-2) >> 0;

 return (0);
}
