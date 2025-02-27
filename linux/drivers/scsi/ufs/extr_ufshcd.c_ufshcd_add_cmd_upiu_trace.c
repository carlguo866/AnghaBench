
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cdb; } ;
struct utp_upiu_req {TYPE_2__ sc; int header; } ;
struct ufs_hba {int dev; TYPE_1__* lrb; } ;
struct TYPE_3__ {struct utp_upiu_req* ucd_req_ptr; } ;


 int dev_name (int ) ;
 int trace_ufshcd_upiu (int ,char const*,int *,int *) ;

__attribute__((used)) static void ufshcd_add_cmd_upiu_trace(struct ufs_hba *hba, unsigned int tag,
  const char *str)
{
 struct utp_upiu_req *rq = hba->lrb[tag].ucd_req_ptr;

 trace_ufshcd_upiu(dev_name(hba->dev), str, &rq->header, &rq->sc.cdb);
}
