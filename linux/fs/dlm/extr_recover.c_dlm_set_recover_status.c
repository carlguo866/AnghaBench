
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_ls {int ls_recover_lock; } ;


 int _set_recover_status (struct dlm_ls*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_set_recover_status(struct dlm_ls *ls, uint32_t status)
{
 spin_lock(&ls->ls_recover_lock);
 _set_recover_status(ls, status);
 spin_unlock(&ls->ls_recover_lock);
}
