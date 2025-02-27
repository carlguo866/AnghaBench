
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_21__ {int p_log; int cache_valid; } ;
typedef TYPE_2__ osm_ucast_mgr_t ;
struct TYPE_22__ {struct TYPE_22__* p_remote_physp; TYPE_4__* p_node; } ;
typedef TYPE_3__ osm_physp_t ;
struct TYPE_23__ {TYPE_1__* sw; } ;
typedef TYPE_4__ osm_node_t ;
struct TYPE_24__ {int max_lid_ho; int * lft; int * hops; scalar_t__ num_hops; int dropped; } ;
typedef TYPE_5__ cache_switch_t ;
struct TYPE_20__ {int max_lid_ho; scalar_t__ lft_size; int * lft; int * new_lft; int * hops; scalar_t__ num_hops; } ;


 int CL_ASSERT (int) ;
 scalar_t__ IB_NODE_TYPE_SWITCH ;
 int OSM_LOG (int ,int ,char*,...) ;
 int OSM_LOG_DEBUG ;
 int OSM_LOG_ENTER (int ) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_EXIT (int ) ;
 int OSM_LOG_VERBOSE ;
 int TRUE ;
 TYPE_5__* cache_get_sw (TYPE_2__*,int ) ;
 int cache_sw_is_leaf (TYPE_5__*) ;
 int cl_ntoh16 (int ) ;
 int osm_node_get_base_lid (TYPE_4__*,int ) ;
 int osm_node_get_num_physp (TYPE_4__*) ;
 TYPE_3__* osm_node_get_physp_ptr (TYPE_4__*,int) ;
 scalar_t__ osm_node_get_type (TYPE_4__*) ;
 int osm_ucast_cache_add_link (TYPE_2__*,TYPE_3__*,TYPE_3__*) ;
 int osm_ucast_cache_invalidate (TYPE_2__*) ;

void osm_ucast_cache_add_node(osm_ucast_mgr_t * p_mgr, osm_node_t * p_node)
{
 uint16_t lid_ho;
 uint8_t max_ports;
 uint8_t port_num;
 osm_physp_t *p_physp;
 cache_switch_t *p_cache_sw;

 OSM_LOG_ENTER(p_mgr->p_log);

 if (!p_mgr->cache_valid)
  goto Exit;

 if (osm_node_get_type(p_node) == IB_NODE_TYPE_SWITCH) {

  lid_ho = cl_ntoh16(osm_node_get_base_lid(p_node, 0));

  if (!lid_ho) {
   OSM_LOG(p_mgr->p_log, OSM_LOG_VERBOSE,
    "Skip caching. Switch dropped before "
    "it gets a valid lid.\n");
   osm_ucast_cache_invalidate(p_mgr);
   goto Exit;
  }

  OSM_LOG(p_mgr->p_log, OSM_LOG_DEBUG,
   "Caching dropped switch lid %u\n", lid_ho);

  if (!p_node->sw) {

   OSM_LOG(p_mgr->p_log, OSM_LOG_ERROR,
    "ERR AD03: no switch info for node lid %u - "
    "clearing cache\n", lid_ho);
   osm_ucast_cache_invalidate(p_mgr);
   goto Exit;
  }


  max_ports = osm_node_get_num_physp(p_node);
  for (port_num = 1; port_num < max_ports; port_num++) {

   p_physp = osm_node_get_physp_ptr(p_node, port_num);
   if (!p_physp || !p_physp->p_remote_physp)
    continue;

   osm_ucast_cache_add_link(p_mgr, p_physp,
       p_physp->p_remote_physp);
  }
  p_cache_sw = cache_get_sw(p_mgr, lid_ho);


  if (!p_cache_sw || !cache_sw_is_leaf(p_cache_sw)) {
   OSM_LOG(p_mgr->p_log, OSM_LOG_DEBUG,
    "Dropped non-leaf switch (lid %u)\n", lid_ho);
   osm_ucast_cache_invalidate(p_mgr);
   goto Exit;
  }

  p_cache_sw->dropped = TRUE;

  if (!p_node->sw->num_hops || !p_node->sw->hops) {
   OSM_LOG(p_mgr->p_log, OSM_LOG_DEBUG,
    "No LID matrices for switch lid %u\n", lid_ho);
   osm_ucast_cache_invalidate(p_mgr);
   goto Exit;
  }



  p_cache_sw->num_hops = p_node->sw->num_hops;
  p_node->sw->num_hops = 0;
  p_cache_sw->hops = p_node->sw->hops;
  p_node->sw->hops = ((void*)0);



  if (p_node->sw->new_lft) {


   p_cache_sw->lft = p_node->sw->new_lft;
   p_node->sw->new_lft = ((void*)0);
  } else {

   p_cache_sw->lft = p_node->sw->lft;
   p_node->sw->lft = ((void*)0);
   p_node->sw->lft_size = 0;
  }
  p_cache_sw->max_lid_ho = p_node->sw->max_lid_ho;
 } else {

  max_ports = osm_node_get_num_physp(p_node);
  for (port_num = 1; port_num < max_ports; port_num++) {

   p_physp = osm_node_get_physp_ptr(p_node, port_num);
   if (!p_physp || !p_physp->p_remote_physp)
    continue;

   CL_ASSERT(osm_node_get_type
      (p_physp->p_remote_physp->p_node) ==
      IB_NODE_TYPE_SWITCH);

   osm_ucast_cache_add_link(p_mgr,
       p_physp->p_remote_physp,
       p_physp);
  }
 }
Exit:
 OSM_LOG_EXIT(p_mgr->p_log);
}
