
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct vfe_stats_control {int * hwRegPongAddress; int * hwRegPingAddress; } ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_BUS_STATS_AF_WR_PING_ADDR ;
 scalar_t__ VFE_BUS_STATS_AF_WR_PONG_ADDR ;
 scalar_t__ VFE_BUS_STATS_AWB_WR_PING_ADDR ;
 scalar_t__ VFE_BUS_STATS_AWB_WR_PONG_ADDR ;
 TYPE_1__* ctrl ;

__attribute__((used)) static void
vfe_set_stats_pingpong_address(struct vfe_stats_control *afControl,
 struct vfe_stats_control *awbControl)
{
 afControl->hwRegPingAddress = (uint8_t *)
  (ctrl->vfebase + VFE_BUS_STATS_AF_WR_PING_ADDR);
 afControl->hwRegPongAddress = (uint8_t *)
  (ctrl->vfebase + VFE_BUS_STATS_AF_WR_PONG_ADDR);

 awbControl->hwRegPingAddress = (uint8_t *)
  (ctrl->vfebase + VFE_BUS_STATS_AWB_WR_PING_ADDR);
 awbControl->hwRegPongAddress = (uint8_t *)
  (ctrl->vfebase + VFE_BUS_STATS_AWB_WR_PONG_ADDR);
}
