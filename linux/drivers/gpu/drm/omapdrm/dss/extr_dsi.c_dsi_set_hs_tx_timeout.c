
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsi_data {int dummy; } ;


 int BUG_ON (int) ;
 int DSI_TIMING2 ;
 int DSSDBG (char*,unsigned long,unsigned int,char*,char*,unsigned long) ;
 int FLD_MOD (int ,unsigned int,int,int) ;
 unsigned long dsi_get_txbyteclkhs (struct dsi_data*) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_write_reg (struct dsi_data*,int ,int ) ;

__attribute__((used)) static void dsi_set_hs_tx_timeout(struct dsi_data *dsi, unsigned int ticks,
      bool x4, bool x16)
{
 unsigned long fck;
 unsigned long total_ticks;
 u32 r;

 BUG_ON(ticks > 0x1fff);


 fck = dsi_get_txbyteclkhs(dsi);

 r = dsi_read_reg(dsi, DSI_TIMING2);
 r = FLD_MOD(r, 1, 31, 31);
 r = FLD_MOD(r, x16 ? 1 : 0, 30, 30);
 r = FLD_MOD(r, x4 ? 1 : 0, 29, 29);
 r = FLD_MOD(r, ticks, 28, 16);
 dsi_write_reg(dsi, DSI_TIMING2, r);

 total_ticks = ticks * (x16 ? 16 : 1) * (x4 ? 4 : 1);

 DSSDBG("HS_TX_TO %lu ticks (%#x%s%s) = %lu ns\n",
   total_ticks,
   ticks, x4 ? " x4" : "", x16 ? " x16" : "",
   (total_ticks * 1000) / (fck / 1000 / 1000));
}
