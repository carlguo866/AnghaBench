
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_mr {int galpas; int ipz_mr_handle; scalar_t__ fmr_map_cnt; scalar_t__ fmr_max_maps; scalar_t__ fmr_max_pages; scalar_t__ fmr_page_size; int * start; scalar_t__ acl; scalar_t__ num_hwpages; scalar_t__ num_kpages; scalar_t__ flags; } ;


 int memset (int *,int ,int) ;

void ehca_mr_deletenew(struct ehca_mr *mr)
{
 mr->flags = 0;
 mr->num_kpages = 0;
 mr->num_hwpages = 0;
 mr->acl = 0;
 mr->start = ((void*)0);
 mr->fmr_page_size = 0;
 mr->fmr_max_pages = 0;
 mr->fmr_max_maps = 0;
 mr->fmr_map_cnt = 0;
 memset(&mr->ipz_mr_handle, 0, sizeof(mr->ipz_mr_handle));
 memset(&mr->galpas, 0, sizeof(mr->galpas));
}
