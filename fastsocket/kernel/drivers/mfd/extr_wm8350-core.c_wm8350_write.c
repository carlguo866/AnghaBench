
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wm8350 {int (* write_dev ) (struct wm8350*,int,int,char*) ;int* reg_cache; int dev; } ;
struct TYPE_2__ {int writable; } ;


 int EINVAL ;
 int ENODEV ;
 int WM8350_MAX_REGISTER ;
 int cpu_to_be16 (int) ;
 int dev_err (int ,char*,int) ;
 scalar_t__ is_reg_locked (struct wm8350*,int) ;
 int stub1 (struct wm8350*,int,int,char*) ;
 TYPE_1__* wm8350_reg_io_map ;

__attribute__((used)) static int wm8350_write(struct wm8350 *wm8350, u8 reg, int num_regs, u16 *src)
{
 int i;
 int end = reg + num_regs;
 int bytes = num_regs * 2;

 if (wm8350->write_dev == ((void*)0))
  return -ENODEV;

 if ((reg + num_regs - 1) > WM8350_MAX_REGISTER) {
  dev_err(wm8350->dev, "invalid reg %x\n",
   reg + num_regs - 1);
  return -EINVAL;
 }


 for (i = reg; i < end; i++) {
  if (!wm8350_reg_io_map[i].writable) {
   dev_err(wm8350->dev,
    "attempted write to read only reg R%d\n", i);
   return -EINVAL;
  }

  if (is_reg_locked(wm8350, i)) {
   dev_err(wm8350->dev,
          "attempted write to locked reg R%d\n", i);
   return -EINVAL;
  }

  src[i - reg] &= wm8350_reg_io_map[i].writable;

  wm8350->reg_cache[i] =
   (wm8350->reg_cache[i] & ~wm8350_reg_io_map[i].writable)
   | src[i - reg];

  src[i - reg] = cpu_to_be16(src[i - reg]);
 }


 return wm8350->write_dev(wm8350, reg, bytes, (char *)src);
}
