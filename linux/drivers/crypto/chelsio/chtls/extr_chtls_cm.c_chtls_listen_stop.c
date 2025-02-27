
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct listen_ctx {int dummy; } ;
struct chtls_dev {TYPE_1__* lldi; int tids; } ;
struct TYPE_2__ {int * rxq_ids; int * ports; } ;


 int chtls_disconnect_acceptq (struct sock*) ;
 int chtls_reset_synq (struct listen_ctx*) ;
 int cxgb4_remove_server (int ,int,int ,int ) ;
 int listen_hash_del (struct chtls_dev*,struct sock*) ;
 scalar_t__ lookup_stid (int ,int) ;

void chtls_listen_stop(struct chtls_dev *cdev, struct sock *sk)
{
 struct listen_ctx *listen_ctx;
 int stid;

 stid = listen_hash_del(cdev, sk);
 if (stid < 0)
  return;

 listen_ctx = (struct listen_ctx *)lookup_stid(cdev->tids, stid);
 chtls_reset_synq(listen_ctx);

 cxgb4_remove_server(cdev->lldi->ports[0], stid,
       cdev->lldi->rxq_ids[0], 0);
 chtls_disconnect_acceptq(sk);
}
