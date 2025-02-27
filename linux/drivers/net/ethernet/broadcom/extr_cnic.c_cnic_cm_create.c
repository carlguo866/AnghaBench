
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cnic_sock {size_t cid; size_t l5_cid; int ulp_type; scalar_t__ tcp_flags; int seed; int snd_buf; int rcv_buf; int snd_seq_scale; int ttl; int tos; int ka_max_probe_count; int ka_interval; int ka_timeout; void* context; struct cnic_dev* dev; int flags; int ref_count; } ;
struct cnic_local {struct cnic_sock* csk_tbl; struct cnic_context* ctx_tbl; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct cnic_context {int ctx_flags; } ;


 int CTX_FL_OFFLD_START ;
 int DEF_KA_INTERVAL ;
 int DEF_KA_MAX_PROBE_COUNT ;
 int DEF_KA_TIMEOUT ;
 int DEF_RCV_BUF ;
 int DEF_SEED ;
 int DEF_SND_BUF ;
 int DEF_SND_SEQ_SCALE ;
 int DEF_TOS ;
 int DEF_TTL ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 size_t MAX_CM_SK_TBL_SZ ;
 int SK_F_INUSE ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int cnic_cm_create(struct cnic_dev *dev, int ulp_type, u32 cid,
     u32 l5_cid, struct cnic_sock **csk, void *context)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_sock *csk1;

 if (l5_cid >= MAX_CM_SK_TBL_SZ)
  return -EINVAL;

 if (cp->ctx_tbl) {
  struct cnic_context *ctx = &cp->ctx_tbl[l5_cid];

  if (test_bit(CTX_FL_OFFLD_START, &ctx->ctx_flags))
   return -EAGAIN;
 }

 csk1 = &cp->csk_tbl[l5_cid];
 if (atomic_read(&csk1->ref_count))
  return -EAGAIN;

 if (test_and_set_bit(SK_F_INUSE, &csk1->flags))
  return -EBUSY;

 csk1->dev = dev;
 csk1->cid = cid;
 csk1->l5_cid = l5_cid;
 csk1->ulp_type = ulp_type;
 csk1->context = context;

 csk1->ka_timeout = DEF_KA_TIMEOUT;
 csk1->ka_interval = DEF_KA_INTERVAL;
 csk1->ka_max_probe_count = DEF_KA_MAX_PROBE_COUNT;
 csk1->tos = DEF_TOS;
 csk1->ttl = DEF_TTL;
 csk1->snd_seq_scale = DEF_SND_SEQ_SCALE;
 csk1->rcv_buf = DEF_RCV_BUF;
 csk1->snd_buf = DEF_SND_BUF;
 csk1->seed = DEF_SEED;
 csk1->tcp_flags = 0;

 *csk = csk1;
 return 0;
}
