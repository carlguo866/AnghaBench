
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pl172_data {int rate; int base; } ;
struct device_node {int dummy; } ;
struct amba_device {int dev; } ;


 int DIV_ROUND_UP (int,int ) ;
 int EINVAL ;
 int NSEC_PER_MSEC ;
 struct pl172_data* amba_get_drvdata (struct amba_device*) ;
 int dev_dbg (int *,char*,char const*,scalar_t__) ;
 int dev_err (int *,char*,char const*) ;
 int of_property_read_u32 (struct device_node const*,char const*,int*) ;
 scalar_t__ readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static int pl172_timing_prop(struct amba_device *adev,
        const struct device_node *np, const char *name,
        u32 reg_offset, u32 max, int start)
{
 struct pl172_data *pl172 = amba_get_drvdata(adev);
 int cycles;
 u32 val;

 if (!of_property_read_u32(np, name, &val)) {
  cycles = DIV_ROUND_UP(val * pl172->rate, NSEC_PER_MSEC) - start;
  if (cycles < 0) {
   cycles = 0;
  } else if (cycles > max) {
   dev_err(&adev->dev, "%s timing too tight\n", name);
   return -EINVAL;
  }

  writel(cycles, pl172->base + reg_offset);
 }

 dev_dbg(&adev->dev, "%s: %u cycle(s)\n", name, start +
    readl(pl172->base + reg_offset));

 return 0;
}
