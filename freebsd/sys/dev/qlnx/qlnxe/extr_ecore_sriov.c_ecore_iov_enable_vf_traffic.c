
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vf_info {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int ecore_iov_config_perm_table (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int) ;
 int ecore_iov_vf_igu_reset (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_igu_set_int (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int) ;

__attribute__((used)) static void ecore_iov_enable_vf_traffic(struct ecore_hwfn *p_hwfn,
     struct ecore_ptt *p_ptt,
     struct ecore_vf_info *vf)
{

 ecore_iov_vf_igu_reset(p_hwfn, p_ptt, vf);

 ecore_iov_vf_igu_set_int(p_hwfn, p_ptt, vf, 1);


 ecore_iov_config_perm_table(p_hwfn, p_ptt, vf, 1);
}
