
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_portal_group {int dummy; } ;



__attribute__((used)) static u32 ibmvscsis_get_default_depth(struct se_portal_group *se_tpg)
{
 return 1;
}
