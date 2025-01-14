
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int cat; } ;
struct TYPE_10__ {TYPE_4__ mls; } ;
struct netlbl_lsm_secattr {TYPE_5__ attr; } ;
struct TYPE_8__ {TYPE_2__* std; } ;
struct cipso_v4_doi {int type; TYPE_3__ map; } ;
struct TYPE_6__ {int cipso_size; int* cipso; } ;
struct TYPE_7__ {TYPE_1__ cat; } ;


 int CIPSO_V4_INV_CAT ;


 int EFAULT ;
 int EINVAL ;
 int EPERM ;
 int GFP_ATOMIC ;
 int cipso_v4_bitmap_walk (unsigned char const*,int,int,int) ;
 int netlbl_secattr_catmap_setbit (int ,int,int ) ;

__attribute__((used)) static int cipso_v4_map_cat_rbm_ntoh(const struct cipso_v4_doi *doi_def,
         const unsigned char *net_cat,
         u32 net_cat_len,
         struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 int net_spot = -1;
 u32 host_spot = CIPSO_V4_INV_CAT;
 u32 net_clen_bits = net_cat_len * 8;
 u32 net_cat_size = 0;
 u32 *net_cat_array = ((void*)0);

 if (doi_def->type == 128) {
  net_cat_size = doi_def->map.std->cat.cipso_size;
  net_cat_array = doi_def->map.std->cat.cipso;
 }

 for (;;) {
  net_spot = cipso_v4_bitmap_walk(net_cat,
      net_clen_bits,
      net_spot + 1,
      1);
  if (net_spot < 0) {
   if (net_spot == -2)
    return -EFAULT;
   return 0;
  }

  switch (doi_def->type) {
  case 129:
   host_spot = net_spot;
   break;
  case 128:
   if (net_spot >= net_cat_size)
    return -EPERM;
   host_spot = net_cat_array[net_spot];
   if (host_spot >= CIPSO_V4_INV_CAT)
    return -EPERM;
   break;
  }
  ret_val = netlbl_secattr_catmap_setbit(secattr->attr.mls.cat,
             host_spot,
             GFP_ATOMIC);
  if (ret_val != 0)
   return ret_val;
 }

 return -EINVAL;
}
