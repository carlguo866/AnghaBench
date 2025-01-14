
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mdfld_dsi_pkg_sender {int lock; } ;
typedef int data ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM ;
 int MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM ;
 int MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM ;
 int send_pkg (struct mdfld_dsi_pkg_sender*,int,int*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mdfld_dsi_send_gen_short(struct mdfld_dsi_pkg_sender *sender, u8 param0,
   u8 param1, u8 param_num, bool hs)
{
 u8 data[2];
 unsigned long flags;
 u8 data_type;

 if (!sender || param_num > 2) {
  DRM_ERROR("Invalid parameter\n");
  return -EINVAL;
 }

 switch (param_num) {
 case 0:
  data_type = MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM;
  data[0] = 0;
  data[1] = 0;
  break;
 case 1:
  data_type = MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM;
  data[0] = param0;
  data[1] = 0;
  break;
 case 2:
  data_type = MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM;
  data[0] = param0;
  data[1] = param1;
  break;
 }

 spin_lock_irqsave(&sender->lock, flags);
 send_pkg(sender, data_type, data, sizeof(data), hs);
 spin_unlock_irqrestore(&sender->lock, flags);

 return 0;
}
