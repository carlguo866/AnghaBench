
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_link {scalar_t__ type; TYPE_1__* local_sink; int connector_signal; TYPE_1__** remote_sinks; } ;
struct TYPE_2__ {int sink_signal; } ;


 int SIGNAL_TYPE_DISPLAY_PORT ;
 int SIGNAL_TYPE_DISPLAY_PORT_MST ;
 scalar_t__ dc_connection_mst_branch ;
 scalar_t__ dc_connection_single ;
 int dp_disable_link_phy (struct dc_link*,int ) ;
 int dp_disable_link_phy_mst (struct dc_link*,int ) ;
 int dp_enable_mst_on_sink (struct dc_link*,int) ;

__attribute__((used)) static void set_dp_mst_mode(struct dc_link *link, bool mst_enable)
{
 if (mst_enable == 0 &&
  link->type == dc_connection_mst_branch) {

  dp_disable_link_phy_mst(link, link->connector_signal);

  link->type = dc_connection_single;
  link->local_sink = link->remote_sinks[0];
  link->local_sink->sink_signal = SIGNAL_TYPE_DISPLAY_PORT;
 } else if (mst_enable == 1 &&
   link->type == dc_connection_single &&
   link->remote_sinks[0] != ((void*)0)) {

  dp_disable_link_phy(link, link->connector_signal);
  dp_enable_mst_on_sink(link, 1);

  link->type = dc_connection_mst_branch;
  link->local_sink->sink_signal = SIGNAL_TYPE_DISPLAY_PORT_MST;
 }
}
