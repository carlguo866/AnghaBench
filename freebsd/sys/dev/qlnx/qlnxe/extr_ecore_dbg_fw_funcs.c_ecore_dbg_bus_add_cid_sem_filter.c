
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct dbg_bus_storm_data* storms; } ;
struct dbg_tools_data {TYPE_1__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_bus_storm_data {int cid_filter_en; int cid; int enabled; } ;
typedef enum dbg_storms { ____Placeholder_dbg_storms } dbg_storms ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int DBG_STATUS_INVALID_ARGS ;
 int DBG_STATUS_OK ;
 int DBG_STATUS_STORM_NOT_ENABLED ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int ) ;
 int ECORE_MSG_DEBUG ;
 int MAX_DBG_STORMS ;

enum dbg_status ecore_dbg_bus_add_cid_sem_filter(struct ecore_hwfn *p_hwfn,
             enum dbg_storms storm_id,
             u32 cid)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 struct dbg_bus_storm_data *storm_bus;

 storm_bus = &dev_data->bus.storms[storm_id];

 DP_VERBOSE(p_hwfn, ECORE_MSG_DEBUG, "dbg_bus_add_cid_sem_filter: storm = %d, cid = 0x%x\n", storm_id, cid);

 if (storm_id >= MAX_DBG_STORMS)
  return DBG_STATUS_INVALID_ARGS;
 if (!storm_bus->enabled)
  return DBG_STATUS_STORM_NOT_ENABLED;

 storm_bus->cid_filter_en = 1;
 storm_bus->cid = cid;

 return DBG_STATUS_OK;
}
