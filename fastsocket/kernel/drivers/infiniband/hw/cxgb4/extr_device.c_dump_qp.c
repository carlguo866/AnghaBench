
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ state; } ;
struct TYPE_16__ {int qid; } ;
struct TYPE_17__ {TYPE_7__ sq; } ;
struct c4iw_qp {TYPE_9__ attr; TYPE_8__ wq; TYPE_6__* ep; } ;
struct c4iw_debugfs_data {int bufsize; int pos; int buf; } ;
struct TYPE_11__ {int s_addr; } ;
struct TYPE_13__ {int sin_port; TYPE_2__ sin_addr; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_12__ {int sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_14__ {TYPE_4__ remote_addr; TYPE_3__ local_addr; scalar_t__ state; } ;
struct TYPE_15__ {int hwtid; TYPE_5__ com; } ;


 int ntohs (int ) ;
 int snprintf (int,int,char*,int,int,...) ;

__attribute__((used)) static int dump_qp(int id, void *p, void *data)
{
 struct c4iw_qp *qp = p;
 struct c4iw_debugfs_data *qpd = data;
 int space;
 int cc;

 if (id != qp->wq.sq.qid)
  return 0;

 space = qpd->bufsize - qpd->pos - 1;
 if (space == 0)
  return 1;

 if (qp->ep)
  cc = snprintf(qpd->buf + qpd->pos, space, "qp id %u state %u "
        "ep tid %u state %u %pI4:%u->%pI4:%u\n",
        qp->wq.sq.qid, (int)qp->attr.state,
        qp->ep->hwtid, (int)qp->ep->com.state,
        &qp->ep->com.local_addr.sin_addr.s_addr,
        ntohs(qp->ep->com.local_addr.sin_port),
        &qp->ep->com.remote_addr.sin_addr.s_addr,
        ntohs(qp->ep->com.remote_addr.sin_port));
 else
  cc = snprintf(qpd->buf + qpd->pos, space, "qp id %u state %u\n",
         qp->wq.sq.qid, (int)qp->attr.state);
 if (cc < space)
  qpd->pos += cc;
 return 0;
}
