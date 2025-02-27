
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {scalar_t__ lu; int udf; int valid; } ;


 int ENOENT ;
 int MVPP2_PE_MAC_RANGE_END ;
 int MVPP2_PE_MAC_RANGE_START ;
 scalar_t__ MVPP2_PRS_LU_MAC ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 scalar_t__ mvpp2_prs_mac_range_equals (struct mvpp2_prs_entry*,int const*,unsigned char*) ;
 unsigned int mvpp2_prs_tcam_port_map_get (struct mvpp2_prs_entry*) ;

__attribute__((used)) static int
mvpp2_prs_mac_da_range_find(struct mvpp2 *priv, int pmap, const u8 *da,
       unsigned char *mask, int udf_type)
{
 struct mvpp2_prs_entry pe;
 int tid;


 for (tid = MVPP2_PE_MAC_RANGE_START;
      tid <= MVPP2_PE_MAC_RANGE_END; tid++) {
  unsigned int entry_pmap;

  if (!priv->prs_shadow[tid].valid ||
      (priv->prs_shadow[tid].lu != MVPP2_PRS_LU_MAC) ||
      (priv->prs_shadow[tid].udf != udf_type))
   continue;

  mvpp2_prs_init_from_hw(priv, &pe, tid);
  entry_pmap = mvpp2_prs_tcam_port_map_get(&pe);

  if (mvpp2_prs_mac_range_equals(&pe, da, mask) &&
      entry_pmap == pmap)
   return tid;
 }

 return -ENOENT;
}
