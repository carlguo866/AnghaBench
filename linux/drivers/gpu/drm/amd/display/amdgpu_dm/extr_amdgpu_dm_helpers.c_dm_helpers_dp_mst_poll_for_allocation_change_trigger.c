
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int mst_state; } ;
struct dc_stream_state {scalar_t__ dm_stream_context; } ;
struct dc_context {int dummy; } ;
struct amdgpu_dm_connector {TYPE_1__* mst_port; } ;
struct TYPE_2__ {struct drm_dp_mst_topology_mgr mst_mgr; } ;


 int drm_dp_check_act_status (struct drm_dp_mst_topology_mgr*) ;

bool dm_helpers_dp_mst_poll_for_allocation_change_trigger(
  struct dc_context *ctx,
  const struct dc_stream_state *stream)
{
 struct amdgpu_dm_connector *aconnector;
 struct drm_dp_mst_topology_mgr *mst_mgr;
 int ret;

 aconnector = (struct amdgpu_dm_connector *)stream->dm_stream_context;

 if (!aconnector || !aconnector->mst_port)
  return 0;

 mst_mgr = &aconnector->mst_port->mst_mgr;

 if (!mst_mgr->mst_state)
  return 0;

 ret = drm_dp_check_act_status(mst_mgr);

 if (ret)
  return 0;

 return 1;
}
