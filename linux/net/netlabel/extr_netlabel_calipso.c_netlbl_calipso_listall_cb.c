
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlbl_calipso_doiwalk_arg {int skb; int seq; TYPE_1__* nl_cb; } ;
struct calipso_doi {int type; int doi; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int skb; } ;


 int ENOMEM ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLBL_CALIPSO_A_DOI ;
 int NLBL_CALIPSO_A_MTYPE ;
 int NLBL_CALIPSO_C_LISTALL ;
 int NLM_F_MULTI ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int ,int ) ;
 int netlbl_calipso_gnl_family ;
 int nla_put_u32 (int ,int ,int ) ;

__attribute__((used)) static int netlbl_calipso_listall_cb(struct calipso_doi *doi_def, void *arg)
{
 int ret_val = -ENOMEM;
 struct netlbl_calipso_doiwalk_arg *cb_arg = arg;
 void *data;

 data = genlmsg_put(cb_arg->skb, NETLINK_CB(cb_arg->nl_cb->skb).portid,
      cb_arg->seq, &netlbl_calipso_gnl_family,
      NLM_F_MULTI, NLBL_CALIPSO_C_LISTALL);
 if (!data)
  goto listall_cb_failure;

 ret_val = nla_put_u32(cb_arg->skb, NLBL_CALIPSO_A_DOI, doi_def->doi);
 if (ret_val != 0)
  goto listall_cb_failure;
 ret_val = nla_put_u32(cb_arg->skb,
         NLBL_CALIPSO_A_MTYPE,
         doi_def->type);
 if (ret_val != 0)
  goto listall_cb_failure;

 genlmsg_end(cb_arg->skb, data);
 return 0;

listall_cb_failure:
 genlmsg_cancel(cb_arg->skb, data);
 return ret_val;
}
