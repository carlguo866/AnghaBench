
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_i2c_bus_rec {int en_clk_mask; int en_clk_reg; } ;
struct radeon_i2c_chan {struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void set_clock(void *i2c_priv, int clock)
{
 struct radeon_i2c_chan *i2c = i2c_priv;
 struct radeon_device *rdev = i2c->dev->dev_private;
 struct radeon_i2c_bus_rec *rec = &i2c->rec;
 uint32_t val;


 val = RREG32(rec->en_clk_reg) & ~rec->en_clk_mask;
 val |= clock ? 0 : rec->en_clk_mask;
 WREG32(rec->en_clk_reg, val);
}
