
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dev {int dummy; } ;


 scalar_t__ BB_PATH_A ;
 scalar_t__ BB_PATH_B ;
 int REG_RXCCKSEL ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;

__attribute__((used)) static void rtw8822c_config_cck_tx_path(struct rtw_dev *rtwdev, u8 tx_path,
     bool is_tx2_path)
{
 if (tx_path == BB_PATH_A) {
  rtw_write32_mask(rtwdev, REG_RXCCKSEL, 0xf0000000, 0x8);
 } else if (tx_path == BB_PATH_B) {
  rtw_write32_mask(rtwdev, REG_RXCCKSEL, 0xf0000000, 0x4);
 } else {
  if (is_tx2_path)
   rtw_write32_mask(rtwdev, REG_RXCCKSEL, 0xf0000000, 0xc);
  else
   rtw_write32_mask(rtwdev, REG_RXCCKSEL, 0xf0000000, 0x8);
 }
}
