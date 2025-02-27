
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nand_sdr_timings {int tALH_min; int tCLH_min; int tCLS_min; int tALS_min; int tWHR_min; int tREH_min; int tWH_min; int tWC_min; int tWP_min; int tRC_min; int tRP_min; int tREA_max; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int dummy; } ;
struct TYPE_3__ {int nfi_clk; } ;
struct mtk_nfc {TYPE_2__* caps; TYPE_1__ clk; } ;
struct TYPE_4__ {int nfi_clk_div; } ;


 int ACCTIMING (int,int,int,int,int,int,int) ;
 int DIV_ROUND_UP (int,int) ;
 int ENOTSUPP ;
 scalar_t__ IS_ERR (struct nand_sdr_timings const*) ;
 int MAX_STROBE_DLY ;
 int NAND_DATA_IFACE_CHECK_ONLY ;
 int NFI_ACCCON ;
 int NFI_DEBUG_CON1 ;
 int STROBE_MASK ;
 int STROBE_SHIFT ;
 int clk_get_rate (int ) ;
 int max (int,int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (struct nand_data_interface const*) ;
 int nfi_readl (struct mtk_nfc*,int ) ;
 int nfi_writel (struct mtk_nfc*,int,int ) ;

__attribute__((used)) static int mtk_nfc_setup_data_interface(struct nand_chip *chip, int csline,
     const struct nand_data_interface *conf)
{
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 const struct nand_sdr_timings *timings;
 u32 rate, tpoecs, tprecs, tc2r, tw2r, twh, twst = 0, trlt = 0;
 u32 temp, tsel = 0;

 timings = nand_get_sdr_timings(conf);
 if (IS_ERR(timings))
  return -ENOTSUPP;

 if (csline == NAND_DATA_IFACE_CHECK_ONLY)
  return 0;

 rate = clk_get_rate(nfc->clk.nfi_clk);

 rate /= nfc->caps->nfi_clk_div;


 rate /= 1000;

 tpoecs = max(timings->tALH_min, timings->tCLH_min) / 1000;
 tpoecs = DIV_ROUND_UP(tpoecs * rate, 1000000);
 tpoecs &= 0xf;

 tprecs = max(timings->tCLS_min, timings->tALS_min) / 1000;
 tprecs = DIV_ROUND_UP(tprecs * rate, 1000000);
 tprecs &= 0x3f;


 tc2r = 0;

 tw2r = timings->tWHR_min / 1000;
 tw2r = DIV_ROUND_UP(tw2r * rate, 1000000);
 tw2r = DIV_ROUND_UP(tw2r - 1, 2);
 tw2r &= 0xf;

 twh = max(timings->tREH_min, timings->tWH_min) / 1000;
 twh = DIV_ROUND_UP(twh * rate, 1000000) - 1;
 twh &= 0xf;


 temp = (twh + 1) * 1000000 / rate;

 temp *= 1000;





 if (temp < timings->tWC_min)
  twst = timings->tWC_min - temp;
 twst = max(timings->tWP_min, twst) / 1000;
 twst = DIV_ROUND_UP(twst * rate, 1000000) - 1;
 twst &= 0xf;





 if (temp < timings->tRC_min)
  trlt = timings->tRC_min - temp;
 trlt = max(trlt, timings->tRP_min) / 1000;
 trlt = DIV_ROUND_UP(trlt * rate, 1000000) - 1;
 trlt &= 0xf;


 temp = (trlt + 1) * 1000000 / rate;

 temp *= 1000;




 if (temp < timings->tREA_max) {
  tsel = timings->tREA_max / 1000;
  tsel = DIV_ROUND_UP(tsel * rate, 1000000);
  tsel -= (trlt + 1);
  if (tsel > MAX_STROBE_DLY) {
   trlt += tsel - MAX_STROBE_DLY;
   tsel = MAX_STROBE_DLY;
  }
 }
 temp = nfi_readl(nfc, NFI_DEBUG_CON1);
 temp &= ~STROBE_MASK;
 temp |= tsel << STROBE_SHIFT;
 nfi_writel(nfc, temp, NFI_DEBUG_CON1);
 trlt = ACCTIMING(tpoecs, tprecs, tc2r, tw2r, twh, twst, trlt);
 nfi_writel(nfc, trlt, NFI_ACCCON);

 return 0;
}
