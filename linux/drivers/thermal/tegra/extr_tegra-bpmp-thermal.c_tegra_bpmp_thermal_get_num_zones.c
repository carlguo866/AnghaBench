
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num; } ;
union mrq_thermal_bpmp_to_host_response {TYPE_3__ get_num_zones; } ;
struct TYPE_5__ {int size; union mrq_thermal_bpmp_to_host_response* data; } ;
struct TYPE_4__ {int size; struct tegra_bpmp_message* data; } ;
struct tegra_bpmp_message {TYPE_2__ rx; TYPE_1__ tx; int mrq; int type; } ;
struct tegra_bpmp {int dummy; } ;
struct mrq_thermal_host_to_bpmp_request {TYPE_2__ rx; TYPE_1__ tx; int mrq; int type; } ;
typedef int req ;
typedef int reply ;
typedef int msg ;


 int CMD_THERMAL_GET_NUM_ZONES ;
 int MRQ_THERMAL ;
 int memset (struct tegra_bpmp_message*,int ,int) ;
 int tegra_bpmp_transfer (struct tegra_bpmp*,struct tegra_bpmp_message*) ;

__attribute__((used)) static int tegra_bpmp_thermal_get_num_zones(struct tegra_bpmp *bpmp,
         int *num_zones)
{
 struct mrq_thermal_host_to_bpmp_request req;
 union mrq_thermal_bpmp_to_host_response reply;
 struct tegra_bpmp_message msg;
 int err;

 memset(&req, 0, sizeof(req));
 req.type = CMD_THERMAL_GET_NUM_ZONES;

 memset(&msg, 0, sizeof(msg));
 msg.mrq = MRQ_THERMAL;
 msg.tx.data = &req;
 msg.tx.size = sizeof(req);
 msg.rx.data = &reply;
 msg.rx.size = sizeof(reply);

 err = tegra_bpmp_transfer(bpmp, &msg);
 if (err)
  return err;

 *num_zones = reply.get_num_zones.num;

 return 0;
}
