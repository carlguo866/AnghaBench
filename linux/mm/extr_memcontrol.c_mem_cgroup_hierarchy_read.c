
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int dummy; } ;
struct TYPE_2__ {int use_hierarchy; } ;


 TYPE_1__* mem_cgroup_from_css (struct cgroup_subsys_state*) ;

__attribute__((used)) static u64 mem_cgroup_hierarchy_read(struct cgroup_subsys_state *css,
         struct cftype *cft)
{
 return mem_cgroup_from_css(css)->use_hierarchy;
}
