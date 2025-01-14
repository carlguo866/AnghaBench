
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct TYPE_4__ {scalar_t__ bool_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; TYPE_1__* info; } ;
struct team {int dummy; } ;
struct TYPE_3__ {struct team_port* port; } ;


 int team_port_disable (struct team*,struct team_port*) ;
 int team_port_enable (struct team*,struct team_port*) ;

__attribute__((used)) static int team_port_en_option_set(struct team *team,
       struct team_gsetter_ctx *ctx)
{
 struct team_port *port = ctx->info->port;

 if (ctx->data.bool_val)
  team_port_enable(team, port);
 else
  team_port_disable(team, port);
 return 0;
}
