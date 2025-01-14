
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ionic_lif {struct net_device* netdev; } ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_8__ {TYPE_3__ cmd; } ;
struct TYPE_5__ {scalar_t__ status; } ;
struct TYPE_6__ {TYPE_1__ comp; } ;
struct ionic_admin_ctx {TYPE_4__ cmd; TYPE_2__ comp; } ;


 int ETIMEDOUT ;
 int ionic_adminq_flush (struct ionic_lif*) ;
 int ionic_error_to_errno (scalar_t__) ;
 char* ionic_error_to_str (scalar_t__) ;
 char* ionic_opcode_to_str (int ) ;
 int netdev_err (struct net_device*,char*,char const*,int ,char*,int) ;

__attribute__((used)) static int ionic_adminq_check_err(struct ionic_lif *lif,
      struct ionic_admin_ctx *ctx,
      bool timeout)
{
 struct net_device *netdev = lif->netdev;
 const char *opcode_str;
 const char *status_str;
 int err = 0;

 if (ctx->comp.comp.status || timeout) {
  opcode_str = ionic_opcode_to_str(ctx->cmd.cmd.opcode);
  status_str = ionic_error_to_str(ctx->comp.comp.status);
  err = timeout ? -ETIMEDOUT :
    ionic_error_to_errno(ctx->comp.comp.status);

  netdev_err(netdev, "%s (%d) failed: %s (%d)\n",
      opcode_str, ctx->cmd.cmd.opcode,
      timeout ? "TIMEOUT" : status_str, err);

  if (timeout)
   ionic_adminq_flush(lif);
 }

 return err;
}
