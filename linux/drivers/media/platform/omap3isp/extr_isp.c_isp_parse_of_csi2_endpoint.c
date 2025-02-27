
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int num_data_lanes; int * lane_polarities; int * data_lanes; int clock_lane; } ;
struct TYPE_10__ {TYPE_2__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {TYPE_3__ bus; } ;
struct TYPE_8__ {int pos; int pol; } ;
struct TYPE_12__ {TYPE_4__* data; TYPE_1__ clk; } ;
struct TYPE_13__ {unsigned int num_data_lanes; int crc; TYPE_5__ lanecfg; } ;
struct TYPE_14__ {TYPE_6__ csi2; } ;
struct isp_bus_cfg {TYPE_7__ bus; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int pos; int pol; } ;


 int dev_dbg (struct device*,char*,unsigned int,int ,...) ;

__attribute__((used)) static void isp_parse_of_csi2_endpoint(struct device *dev,
           struct v4l2_fwnode_endpoint *vep,
           struct isp_bus_cfg *buscfg)
{
 unsigned int i;

 buscfg->bus.csi2.lanecfg.clk.pos = vep->bus.mipi_csi2.clock_lane;
 buscfg->bus.csi2.lanecfg.clk.pol =
  vep->bus.mipi_csi2.lane_polarities[0];
 dev_dbg(dev, "clock lane polarity %u, pos %u\n",
  buscfg->bus.csi2.lanecfg.clk.pol,
  buscfg->bus.csi2.lanecfg.clk.pos);

 buscfg->bus.csi2.num_data_lanes = vep->bus.mipi_csi2.num_data_lanes;

 for (i = 0; i < buscfg->bus.csi2.num_data_lanes; i++) {
  buscfg->bus.csi2.lanecfg.data[i].pos =
   vep->bus.mipi_csi2.data_lanes[i];
  buscfg->bus.csi2.lanecfg.data[i].pol =
   vep->bus.mipi_csi2.lane_polarities[i + 1];
  dev_dbg(dev,
   "data lane %u polarity %u, pos %u\n", i,
   buscfg->bus.csi2.lanecfg.data[i].pol,
   buscfg->bus.csi2.lanecfg.data[i].pos);
 }




 buscfg->bus.csi2.crc = 1;
}
