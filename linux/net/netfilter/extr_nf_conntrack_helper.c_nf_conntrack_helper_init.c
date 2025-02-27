
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int helper_extend ;
 int kvfree (int ) ;
 int nf_ct_alloc_hashtable (int*,int ) ;
 int nf_ct_extend_register (int *) ;
 int nf_ct_helper_hash ;
 int nf_ct_helper_hsize ;
 int nf_ct_nat_helpers ;
 int pr_err (char*) ;

int nf_conntrack_helper_init(void)
{
 int ret;
 nf_ct_helper_hsize = 1;
 nf_ct_helper_hash =
  nf_ct_alloc_hashtable(&nf_ct_helper_hsize, 0);
 if (!nf_ct_helper_hash)
  return -ENOMEM;

 ret = nf_ct_extend_register(&helper_extend);
 if (ret < 0) {
  pr_err("nf_ct_helper: Unable to register helper extension.\n");
  goto out_extend;
 }

 INIT_LIST_HEAD(&nf_ct_nat_helpers);
 return 0;
out_extend:
 kvfree(nf_ct_helper_hash);
 return ret;
}
