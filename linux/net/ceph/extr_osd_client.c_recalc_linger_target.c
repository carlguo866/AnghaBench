
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int osd; } ;
struct ceph_osd_linger_request {struct ceph_osd* osd; TYPE_1__ t; struct ceph_osd_client* osdc; } ;
struct ceph_osd_client {int dummy; } ;
struct ceph_osd {int dummy; } ;
typedef enum calc_target_result { ____Placeholder_calc_target_result } calc_target_result ;


 int CALC_TARGET_NEED_RESEND ;
 int calc_target (struct ceph_osd_client*,TYPE_1__*,int) ;
 int link_linger (struct ceph_osd*,struct ceph_osd_linger_request*) ;
 struct ceph_osd* lookup_create_osd (struct ceph_osd_client*,int ,int) ;
 int unlink_linger (struct ceph_osd*,struct ceph_osd_linger_request*) ;

__attribute__((used)) static enum calc_target_result
recalc_linger_target(struct ceph_osd_linger_request *lreq)
{
 struct ceph_osd_client *osdc = lreq->osdc;
 enum calc_target_result ct_res;

 ct_res = calc_target(osdc, &lreq->t, 1);
 if (ct_res == CALC_TARGET_NEED_RESEND) {
  struct ceph_osd *osd;

  osd = lookup_create_osd(osdc, lreq->t.osd, 1);
  if (osd != lreq->osd) {
   unlink_linger(lreq->osd, lreq);
   link_linger(osd, lreq);
  }
 }

 return ct_res;
}
