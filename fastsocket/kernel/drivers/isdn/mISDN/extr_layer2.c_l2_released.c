
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ tm; } ;
struct FsmInst {struct layer2* userdata; } ;


 int DL_RELEASE_CNF ;
 int MDL_STATUS_DOWN_IND ;
 int ST_L2_4 ;
 int dev_kfree_skb (struct sk_buff*) ;
 int get_PollFlag (struct layer2*,struct sk_buff*) ;
 int l2_mdl_error_ua (struct FsmInst*,int,void*) ;
 int l2_tei (struct layer2*,int ,int ) ;
 int lapb_dl_release_l2l3 (struct layer2*,int ) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int stop_t200 (struct layer2*,int) ;

__attribute__((used)) static void
l2_released(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;

 if (!get_PollFlag(l2, skb)) {
  l2_mdl_error_ua(fi, event, arg);
  return;
 }
 dev_kfree_skb(skb);
 stop_t200(l2, 6);
 lapb_dl_release_l2l3(l2, DL_RELEASE_CNF);
 mISDN_FsmChangeState(fi, ST_L2_4);
 if (l2->tm)
  l2_tei(l2, MDL_STATUS_DOWN_IND, 0);
}
