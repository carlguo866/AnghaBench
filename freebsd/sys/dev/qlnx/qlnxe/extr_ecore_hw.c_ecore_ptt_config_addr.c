
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pxp_ptt_entry {int dummy; } ;
struct ecore_ptt {int idx; } ;


 scalar_t__ PXP_PF_WINDOW_ADMIN_PER_PF_START ;

__attribute__((used)) static u32 ecore_ptt_config_addr(struct ecore_ptt *p_ptt)
{
 return PXP_PF_WINDOW_ADMIN_PER_PF_START +
        p_ptt->idx * sizeof(struct pxp_ptt_entry);
}
