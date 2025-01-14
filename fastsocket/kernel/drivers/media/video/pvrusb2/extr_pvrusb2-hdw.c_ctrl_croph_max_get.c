
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ height; } ;
struct v4l2_cropcap {TYPE_1__ bounds; } ;
struct pvr2_ctrl {TYPE_2__* hdw; } ;
struct TYPE_4__ {scalar_t__ cropt_val; struct v4l2_cropcap cropcap_info; } ;


 int pvr2_hdw_check_cropcap (TYPE_2__*) ;

__attribute__((used)) static int ctrl_croph_max_get(struct pvr2_ctrl *cptr, int *val)
{
 struct v4l2_cropcap *cap = &cptr->hdw->cropcap_info;
 int stat = pvr2_hdw_check_cropcap(cptr->hdw);
 if (stat != 0) {
  return stat;
 }
 *val = 0;
 if (cap->bounds.height > cptr->hdw->cropt_val) {
  *val = cap->bounds.height - cptr->hdw->cropt_val;
 }
 return 0;
}
