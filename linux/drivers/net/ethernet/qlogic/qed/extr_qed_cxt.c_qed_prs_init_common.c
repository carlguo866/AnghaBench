
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ is_target; } ;
struct TYPE_6__ {TYPE_2__ fcoe_pf_params; } ;
struct TYPE_4__ {scalar_t__ personality; } ;
struct qed_hwfn {TYPE_3__ pf_params; TYPE_1__ hw_info; } ;


 int PRS_REG_SEARCH_RESP_INITIATOR_TYPE_RT_OFFSET ;
 scalar_t__ QED_PCI_FCOE ;
 int STORE_RT_REG (struct qed_hwfn*,int ,int ) ;

__attribute__((used)) static void qed_prs_init_common(struct qed_hwfn *p_hwfn)
{
 if ((p_hwfn->hw_info.personality == QED_PCI_FCOE) &&
     p_hwfn->pf_params.fcoe_pf_params.is_target)
  STORE_RT_REG(p_hwfn,
        PRS_REG_SEARCH_RESP_INITIATOR_TYPE_RT_OFFSET, 0);
}
