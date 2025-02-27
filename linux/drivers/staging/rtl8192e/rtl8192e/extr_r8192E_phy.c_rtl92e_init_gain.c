
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int xaagccore1; int xbagccore1; int xcagccore1; int xdagccore1; int cca; } ;
struct r8192_priv {TYPE_3__* rtllib; TYPE_1__ initgain_backup; scalar_t__ up; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int dig_algorithm; } ;
struct TYPE_6__ {int channel; } ;
struct TYPE_7__ {TYPE_2__ current_network; } ;


 int COMP_SCAN ;
 int DIG_ALGO_BY_FALSE_ALARM ;


 int POWER_DETECTION_TH ;
 int RT_TRACE (int ,char*,...) ;
 int SCAN_RX_INITIAL_GAIN ;
 int UFWP ;
 int bMaskByte0 ;
 int bMaskByte1 ;
 int bMaskByte2 ;
 TYPE_4__ dm_digtable ;
 int rCCK0_CCA ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM0_XCAGCCore1 ;
 int rOFDM0_XDAGCCore1 ;
 int rtl92e_get_bb_reg (struct net_device*,int,int) ;
 int rtl92e_set_bb_reg (struct net_device*,int,int,int) ;
 int rtl92e_set_tx_power (struct net_device*,int ) ;
 int rtl92e_writeb (struct net_device*,int,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_init_gain(struct net_device *dev, u8 Operation)
{


 struct r8192_priv *priv = rtllib_priv(dev);
 u32 BitMask;
 u8 initial_gain;

 if (priv->up) {
  switch (Operation) {
  case 129:
   RT_TRACE(COMP_SCAN,
     "IG_Backup, backup the initial gain.\n");
   initial_gain = 0x17;
   BitMask = bMaskByte0;
   if (dm_digtable.dig_algorithm ==
       DIG_ALGO_BY_FALSE_ALARM)
    rtl92e_set_bb_reg(dev, UFWP, bMaskByte1, 0x8);
   priv->initgain_backup.xaagccore1 =
     (u8)rtl92e_get_bb_reg(dev, rOFDM0_XAAGCCore1,
             BitMask);
   priv->initgain_backup.xbagccore1 =
     (u8)rtl92e_get_bb_reg(dev, rOFDM0_XBAGCCore1,
             BitMask);
   priv->initgain_backup.xcagccore1 =
     (u8)rtl92e_get_bb_reg(dev, rOFDM0_XCAGCCore1,
             BitMask);
   priv->initgain_backup.xdagccore1 =
     (u8)rtl92e_get_bb_reg(dev, rOFDM0_XDAGCCore1,
             BitMask);
   BitMask = bMaskByte2;
   priv->initgain_backup.cca = (u8)rtl92e_get_bb_reg(dev,
          rCCK0_CCA, BitMask);

   RT_TRACE(COMP_SCAN,
     "Scan InitialGainBackup 0xc50 is %x\n",
     priv->initgain_backup.xaagccore1);
   RT_TRACE(COMP_SCAN,
     "Scan InitialGainBackup 0xc58 is %x\n",
     priv->initgain_backup.xbagccore1);
   RT_TRACE(COMP_SCAN,
     "Scan InitialGainBackup 0xc60 is %x\n",
     priv->initgain_backup.xcagccore1);
   RT_TRACE(COMP_SCAN,
     "Scan InitialGainBackup 0xc68 is %x\n",
     priv->initgain_backup.xdagccore1);
   RT_TRACE(COMP_SCAN,
     "Scan InitialGainBackup 0xa0a is %x\n",
     priv->initgain_backup.cca);

   RT_TRACE(COMP_SCAN, "Write scan initial gain = 0x%x\n",
     initial_gain);
   rtl92e_writeb(dev, rOFDM0_XAAGCCore1, initial_gain);
   rtl92e_writeb(dev, rOFDM0_XBAGCCore1, initial_gain);
   rtl92e_writeb(dev, rOFDM0_XCAGCCore1, initial_gain);
   rtl92e_writeb(dev, rOFDM0_XDAGCCore1, initial_gain);
   RT_TRACE(COMP_SCAN, "Write scan 0xa0a = 0x%x\n",
     0x08);
   rtl92e_writeb(dev, 0xa0a, 0x08);
   break;
  case 128:
   RT_TRACE(COMP_SCAN,
     "IG_Restore, restore the initial gain.\n");
   BitMask = 0x7f;
   if (dm_digtable.dig_algorithm ==
       DIG_ALGO_BY_FALSE_ALARM)
    rtl92e_set_bb_reg(dev, UFWP, bMaskByte1, 0x8);

   rtl92e_set_bb_reg(dev, rOFDM0_XAAGCCore1, BitMask,
      (u32)priv->initgain_backup.xaagccore1);
   rtl92e_set_bb_reg(dev, rOFDM0_XBAGCCore1, BitMask,
      (u32)priv->initgain_backup.xbagccore1);
   rtl92e_set_bb_reg(dev, rOFDM0_XCAGCCore1, BitMask,
      (u32)priv->initgain_backup.xcagccore1);
   rtl92e_set_bb_reg(dev, rOFDM0_XDAGCCore1, BitMask,
      (u32)priv->initgain_backup.xdagccore1);
   BitMask = bMaskByte2;
   rtl92e_set_bb_reg(dev, rCCK0_CCA, BitMask,
      (u32)priv->initgain_backup.cca);

   RT_TRACE(COMP_SCAN,
     "Scan BBInitialGainRestore 0xc50 is %x\n",
     priv->initgain_backup.xaagccore1);
   RT_TRACE(COMP_SCAN,
     "Scan BBInitialGainRestore 0xc58 is %x\n",
     priv->initgain_backup.xbagccore1);
   RT_TRACE(COMP_SCAN,
     "Scan BBInitialGainRestore 0xc60 is %x\n",
     priv->initgain_backup.xcagccore1);
   RT_TRACE(COMP_SCAN,
     "Scan BBInitialGainRestore 0xc68 is %x\n",
     priv->initgain_backup.xdagccore1);
   RT_TRACE(COMP_SCAN,
     "Scan BBInitialGainRestore 0xa0a is %x\n",
     priv->initgain_backup.cca);

   rtl92e_set_tx_power(dev,
      priv->rtllib->current_network.channel);

   if (dm_digtable.dig_algorithm ==
       DIG_ALGO_BY_FALSE_ALARM)
    rtl92e_set_bb_reg(dev, UFWP, bMaskByte1, 0x1);
   break;
  default:
   RT_TRACE(COMP_SCAN, "Unknown IG Operation.\n");
   break;
  }
 }
}
