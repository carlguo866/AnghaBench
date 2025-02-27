
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct color_conv_coef {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; } ;
struct TYPE_4__ {TYPE_1__* feat; } ;
struct TYPE_3__ {scalar_t__ has_writeback; } ;


 int OMAP_DSS_WB ;
 TYPE_2__ dispc ;
 int dispc_ovl_write_color_conv_coef (int,struct color_conv_coef const*) ;
 int dss_feat_get_num_ovls () ;

__attribute__((used)) static void dispc_setup_color_conv_coef(void)
{
 int i;
 int num_ovl = dss_feat_get_num_ovls();
 const struct color_conv_coef ctbl_bt601_5_ovl = {

  298, 409, 0, 298, -208, -100, 298, 0, 517, 0,
 };
 const struct color_conv_coef ctbl_bt601_5_wb = {

  66, 129, 25, 112, -94, -18, -38, -74, 112, 0,
 };

 for (i = 1; i < num_ovl; i++)
  dispc_ovl_write_color_conv_coef(i, &ctbl_bt601_5_ovl);

 if (dispc.feat->has_writeback)
  dispc_ovl_write_color_conv_coef(OMAP_DSS_WB, &ctbl_bt601_5_wb);
}
