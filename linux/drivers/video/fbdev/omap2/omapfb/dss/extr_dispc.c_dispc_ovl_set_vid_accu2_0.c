
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int DISPC_OVL_ACCU2_0 (int) ;
 int FLD_VAL (int,int,int) ;
 int dispc_write_reg (int ,int) ;

__attribute__((used)) static void dispc_ovl_set_vid_accu2_0(enum omap_plane plane, int haccu,
  int vaccu)
{
 u32 val;

 val = FLD_VAL(vaccu, 26, 16) | FLD_VAL(haccu, 10, 0);
 dispc_write_reg(DISPC_OVL_ACCU2_0(plane), val);
}
