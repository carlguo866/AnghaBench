
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scmi_perf_info {struct perf_dom_info* dom_info; } ;
struct scmi_handle {struct scmi_perf_info* perf_priv; } ;
struct perf_dom_info {TYPE_1__* fc_info; } ;
struct TYPE_2__ {scalar_t__ level_get_addr; } ;


 int ioread32 (scalar_t__) ;
 int scmi_perf_mb_level_get (struct scmi_handle const*,int,int*,int) ;

__attribute__((used)) static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
          u32 *level, bool poll)
{
 struct scmi_perf_info *pi = handle->perf_priv;
 struct perf_dom_info *dom = pi->dom_info + domain;

 if (dom->fc_info && dom->fc_info->level_get_addr) {
  *level = ioread32(dom->fc_info->level_get_addr);
  return 0;
 }

 return scmi_perf_mb_level_get(handle, domain, level, poll);
}
