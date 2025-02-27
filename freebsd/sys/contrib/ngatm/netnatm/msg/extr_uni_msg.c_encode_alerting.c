
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef union uni_ieall {int dummy; } uni_ieall ;
typedef size_t u_int ;
struct unicx {int dummy; } ;
struct uni_msg {size_t* b_buf; size_t b_wptr; size_t b_rptr; } ;
struct TYPE_18__ {int present; } ;
struct TYPE_19__ {TYPE_13__ h; } ;
struct TYPE_16__ {int present; } ;
struct TYPE_17__ {TYPE_11__ h; } ;
struct TYPE_28__ {int present; } ;
struct TYPE_15__ {TYPE_9__ h; } ;
struct TYPE_24__ {int present; } ;
struct TYPE_25__ {TYPE_5__ h; } ;
struct TYPE_22__ {int present; } ;
struct TYPE_23__ {TYPE_3__ h; } ;
struct TYPE_20__ {int present; } ;
struct TYPE_21__ {TYPE_1__ h; } ;
struct uni_alerting {TYPE_14__ unrec; TYPE_12__ report; TYPE_10__ uu; TYPE_8__* git; TYPE_6__ notify; TYPE_4__ epref; TYPE_2__ connid; int hdr; } ;
struct TYPE_26__ {int present; } ;
struct TYPE_27__ {TYPE_7__ h; } ;


 int UNI_ALERTING ;
 int UNI_IE_CONNID ;
 int UNI_IE_EPREF ;
 int UNI_IE_GIT ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_PRESENT ;
 int UNI_IE_REPORT ;
 int UNI_IE_UNREC ;
 int UNI_IE_UU ;
 size_t UNI_NUM_IE_GIT ;
 scalar_t__ uni_encode_ie (int,struct uni_msg*,union uni_ieall*,struct unicx*) ;
 scalar_t__ uni_encode_msg_hdr (struct uni_msg*,int *,int ,struct unicx*,size_t*) ;

__attribute__((used)) static int
encode_alerting(struct uni_msg *msg, struct uni_alerting *p, struct unicx *cx)
{
 u_int mlen;
 u_int i;

 if(uni_encode_msg_hdr(msg, &p->hdr, UNI_ALERTING, cx, &mlen))
  return (-2);

 if((p->connid.h.present & UNI_IE_PRESENT) &&
    uni_encode_ie(UNI_IE_CONNID, msg, (union uni_ieall *)&p->connid, cx))
  return (UNI_IE_CONNID);
 if((p->epref.h.present & UNI_IE_PRESENT) &&
    uni_encode_ie(UNI_IE_EPREF, msg, (union uni_ieall *)&p->epref, cx))
  return (UNI_IE_EPREF);
 if((p->notify.h.present & UNI_IE_PRESENT) &&
    uni_encode_ie(UNI_IE_NOTIFY, msg, (union uni_ieall *)&p->notify, cx))
  return (UNI_IE_NOTIFY);
 for(i = 0; i < UNI_NUM_IE_GIT; i++)
  if((p->git[i].h.present & UNI_IE_PRESENT) &&
     uni_encode_ie(UNI_IE_GIT, msg, (union uni_ieall *)&p->git[i], cx))
  return ((i << 16) + UNI_IE_GIT);
 if((p->uu.h.present & UNI_IE_PRESENT) &&
    uni_encode_ie(UNI_IE_UU, msg, (union uni_ieall *)&p->uu, cx))
  return (UNI_IE_UU);
 if((p->report.h.present & UNI_IE_PRESENT) &&
    uni_encode_ie(UNI_IE_REPORT, msg, (union uni_ieall *)&p->report, cx))
  return (UNI_IE_REPORT);
 if((p->unrec.h.present & UNI_IE_PRESENT) &&
    uni_encode_ie(UNI_IE_UNREC, msg, (union uni_ieall *)&p->unrec, cx))
  return (UNI_IE_UNREC);

 msg->b_buf[mlen+0] = ((msg->b_wptr-msg->b_rptr)-mlen-2) >> 8;
 msg->b_buf[mlen+1] = ((msg->b_wptr-msg->b_rptr)-mlen-2) >> 0;

 return (0);
}
