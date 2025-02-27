
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bdx_stats {int dummy; } ;
struct bdx_priv {struct bdx_stats hw_stats; } ;


 int BDX_ASSERT (int) ;
 int bdx_read_l2stat (struct bdx_priv*,int) ;

__attribute__((used)) static void bdx_update_stats(struct bdx_priv *priv)
{
 struct bdx_stats *stats = &priv->hw_stats;
 u64 *stats_vector = (u64 *) stats;
 int i;
 int addr;


 addr = 0x7200;

 for (i = 0; i < 12; i++) {
  stats_vector[i] = bdx_read_l2stat(priv, addr);
  addr += 0x10;
 }
 BDX_ASSERT(addr != 0x72C0);

 addr = 0x72F0;
 for (; i < 16; i++) {
  stats_vector[i] = bdx_read_l2stat(priv, addr);
  addr += 0x10;
 }
 BDX_ASSERT(addr != 0x7330);

 addr = 0x7370;
 for (; i < 19; i++) {
  stats_vector[i] = bdx_read_l2stat(priv, addr);
  addr += 0x10;
 }
 BDX_ASSERT(addr != 0x73A0);

 addr = 0x73C0;
 for (; i < 23; i++) {
  stats_vector[i] = bdx_read_l2stat(priv, addr);
  addr += 0x10;
 }
 BDX_ASSERT(addr != 0x7400);
 BDX_ASSERT((sizeof(struct bdx_stats) / sizeof(u64)) != i);
}
