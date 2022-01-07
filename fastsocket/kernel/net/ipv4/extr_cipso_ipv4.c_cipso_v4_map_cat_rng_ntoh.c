
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_3__ {int cat; } ;
struct TYPE_4__ {TYPE_1__ mls; } ;
struct netlbl_lsm_secattr {TYPE_2__ attr; } ;
struct cipso_v4_doi {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ get_unaligned_be16 (unsigned char const*) ;
 int netlbl_secattr_catmap_setrng (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int cipso_v4_map_cat_rng_ntoh(const struct cipso_v4_doi *doi_def,
         const unsigned char *net_cat,
         u32 net_cat_len,
         struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 u32 net_iter;
 u16 cat_low;
 u16 cat_high;

 for (net_iter = 0; net_iter < net_cat_len; net_iter += 4) {
  cat_high = get_unaligned_be16(&net_cat[net_iter]);
  if ((net_iter + 4) <= net_cat_len)
   cat_low = get_unaligned_be16(&net_cat[net_iter + 2]);
  else
   cat_low = 0;

  ret_val = netlbl_secattr_catmap_setrng(secattr->attr.mls.cat,
             cat_low,
             cat_high,
             GFP_ATOMIC);
  if (ret_val != 0)
   return ret_val;
 }

 return 0;
}
