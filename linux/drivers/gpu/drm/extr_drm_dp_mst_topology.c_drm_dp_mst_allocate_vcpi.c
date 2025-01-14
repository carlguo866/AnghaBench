
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int pbn_div; } ;
struct TYPE_2__ {scalar_t__ vcpi; int pbn; int num_slots; } ;
struct drm_dp_mst_port {TYPE_1__ vcpi; } ;


 int DIV_ROUND_UP (int,int ) ;
 int DRM_DEBUG_KMS (char*,int,int,...) ;
 int drm_dp_init_vcpi (struct drm_dp_mst_topology_mgr*,TYPE_1__*,int,int) ;
 int drm_dp_mst_get_port_malloc (struct drm_dp_mst_port*) ;
 struct drm_dp_mst_port* drm_dp_mst_topology_get_port_validated (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ;
 int drm_dp_mst_topology_put_port (struct drm_dp_mst_port*) ;

bool drm_dp_mst_allocate_vcpi(struct drm_dp_mst_topology_mgr *mgr,
         struct drm_dp_mst_port *port, int pbn, int slots)
{
 int ret;

 port = drm_dp_mst_topology_get_port_validated(mgr, port);
 if (!port)
  return 0;

 if (slots < 0)
  return 0;

 if (port->vcpi.vcpi > 0) {
  DRM_DEBUG_KMS("payload: vcpi %d already allocated for pbn %d - requested pbn %d\n",
         port->vcpi.vcpi, port->vcpi.pbn, pbn);
  if (pbn == port->vcpi.pbn) {
   drm_dp_mst_topology_put_port(port);
   return 1;
  }
 }

 ret = drm_dp_init_vcpi(mgr, &port->vcpi, pbn, slots);
 if (ret) {
  DRM_DEBUG_KMS("failed to init vcpi slots=%d max=63 ret=%d\n",
         DIV_ROUND_UP(pbn, mgr->pbn_div), ret);
  goto out;
 }
 DRM_DEBUG_KMS("initing vcpi for pbn=%d slots=%d\n",
        pbn, port->vcpi.num_slots);


 drm_dp_mst_get_port_malloc(port);
 drm_dp_mst_topology_put_port(port);
 return 1;
out:
 return 0;
}
