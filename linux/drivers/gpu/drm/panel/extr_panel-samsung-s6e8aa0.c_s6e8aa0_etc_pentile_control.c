
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s6e8aa0 {int version; } ;


 int ARRAY_SIZE (int const*) ;
 int s6e8aa0_dcs_write (struct s6e8aa0*,int const*,int ) ;

__attribute__((used)) static void s6e8aa0_etc_pentile_control(struct s6e8aa0 *ctx)
{
 static const u8 pent32[] = {
  0xb6, 0x0c, 0x02, 0x03, 0x32, 0xc0, 0x44, 0x44, 0xc0, 0x00
 };

 static const u8 pent142[] = {
  0xb6, 0x0c, 0x02, 0x03, 0x32, 0xff, 0x44, 0x44, 0xc0, 0x00
 };

 if (ctx->version < 142)
  s6e8aa0_dcs_write(ctx, pent32, ARRAY_SIZE(pent32));
 else
  s6e8aa0_dcs_write(ctx, pent142, ARRAY_SIZE(pent142));
}
