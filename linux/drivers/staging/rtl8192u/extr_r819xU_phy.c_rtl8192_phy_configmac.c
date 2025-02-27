
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8192_priv {scalar_t__ btxpowerdata_readfromEEPORM; } ;
struct net_device {int dummy; } ;


 int COMP_DBG ;
 int COMP_PHY ;
 int MACPHY_ArrayLength ;
 int MACPHY_Array_PGLength ;
 int RT_TRACE (int ,char*,...) ;
 int* Rtl8192UsbMACPHY_Array_PG ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rtl8192_setBBreg (struct net_device*,int,int,int) ;
 int* rtl819XMACPHY_Array ;

void rtl8192_phy_configmac(struct net_device *dev)
{
 u32 dwArrayLen = 0, i;
 u32 *pdwArray = ((void*)0);
 struct r8192_priv *priv = ieee80211_priv(dev);

 if (priv->btxpowerdata_readfromEEPORM) {
  RT_TRACE(COMP_PHY, "Rtl819XMACPHY_Array_PG\n");
  dwArrayLen = MACPHY_Array_PGLength;
  pdwArray = Rtl8192UsbMACPHY_Array_PG;

 } else {
  RT_TRACE(COMP_PHY, "Rtl819XMACPHY_Array\n");
  dwArrayLen = MACPHY_ArrayLength;
  pdwArray = rtl819XMACPHY_Array;
 }
 for (i = 0; i < dwArrayLen; i = i+3) {
  if (pdwArray[i] == 0x318)
   pdwArray[i+2] = 0x00000800;

  RT_TRACE(COMP_DBG,
    "Rtl8190MACPHY_Array[0]=%x Rtl8190MACPHY_Array[1]=%x Rtl8190MACPHY_Array[2]=%x\n",
    pdwArray[i], pdwArray[i+1], pdwArray[i+2]);
  rtl8192_setBBreg(dev, pdwArray[i], pdwArray[i+1],
     pdwArray[i+2]);
 }
}
