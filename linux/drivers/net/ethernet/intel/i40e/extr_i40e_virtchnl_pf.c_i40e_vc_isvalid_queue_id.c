
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct i40e_vsi {scalar_t__ alloc_queue_pairs; } ;
struct i40e_vf {struct i40e_pf* pf; } ;
struct i40e_pf {int dummy; } ;


 struct i40e_vsi* i40e_find_vsi_from_id (struct i40e_pf*,scalar_t__) ;

__attribute__((used)) static inline bool i40e_vc_isvalid_queue_id(struct i40e_vf *vf, u16 vsi_id,
         u16 qid)
{
 struct i40e_pf *pf = vf->pf;
 struct i40e_vsi *vsi = i40e_find_vsi_from_id(pf, vsi_id);

 return (vsi && (qid < vsi->alloc_queue_pairs));
}
