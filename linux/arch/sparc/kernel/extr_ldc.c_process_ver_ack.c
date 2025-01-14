
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_version {scalar_t__ major; scalar_t__ minor; } ;
struct ldc_channel {scalar_t__ hs_state; struct ldc_version ver; } ;


 int HS ;
 int LDC_ABORT (struct ldc_channel*) ;
 scalar_t__ LDC_HS_GOTVERS ;
 int ldcdbg (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ send_rts (struct ldc_channel*) ;

__attribute__((used)) static int process_ver_ack(struct ldc_channel *lp, struct ldc_version *vp)
{
 ldcdbg(HS, "GOT VERSION ACK major[%x] minor[%x]\n",
        vp->major, vp->minor);

 if (lp->hs_state == LDC_HS_GOTVERS) {
  if (lp->ver.major != vp->major ||
      lp->ver.minor != vp->minor)
   return LDC_ABORT(lp);
 } else {
  lp->ver = *vp;
  lp->hs_state = LDC_HS_GOTVERS;
 }
 if (send_rts(lp))
  return LDC_ABORT(lp);
 return 0;
}
