
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2 {int dummy; } ;
struct mbus_dram_window {int base; int mbus_attr; int size; } ;
struct mbus_dram_target_info {int num_cs; int mbus_dram_target_id; struct mbus_dram_window* cs; } ;


 int MVPP2_BASE_ADDR_ENABLE ;
 int MVPP2_WIN_BASE (int) ;
 int MVPP2_WIN_REMAP (int) ;
 int MVPP2_WIN_SIZE (int) ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

__attribute__((used)) static void mvpp2_conf_mbus_windows(const struct mbus_dram_target_info *dram,
        struct mvpp2 *priv)
{
 u32 win_enable;
 int i;

 for (i = 0; i < 6; i++) {
  mvpp2_write(priv, MVPP2_WIN_BASE(i), 0);
  mvpp2_write(priv, MVPP2_WIN_SIZE(i), 0);

  if (i < 4)
   mvpp2_write(priv, MVPP2_WIN_REMAP(i), 0);
 }

 win_enable = 0;

 for (i = 0; i < dram->num_cs; i++) {
  const struct mbus_dram_window *cs = dram->cs + i;

  mvpp2_write(priv, MVPP2_WIN_BASE(i),
       (cs->base & 0xffff0000) | (cs->mbus_attr << 8) |
       dram->mbus_dram_target_id);

  mvpp2_write(priv, MVPP2_WIN_SIZE(i),
       (cs->size - 1) & 0xffff0000);

  win_enable |= (1 << i);
 }

 mvpp2_write(priv, MVPP2_BASE_ADDR_ENABLE, win_enable);
}
