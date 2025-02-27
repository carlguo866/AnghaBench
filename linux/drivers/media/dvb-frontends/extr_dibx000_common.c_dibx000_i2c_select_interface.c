
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dibx000_i2c_master {scalar_t__ device_rev; int selected_interface; scalar_t__ base_reg; } ;
typedef enum dibx000_i2c_interface { ____Placeholder_dibx000_i2c_interface } dibx000_i2c_interface ;


 scalar_t__ DIB3000MC ;
 int dibx000_write_word (struct dibx000_i2c_master*,scalar_t__,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int dibx000_i2c_select_interface(struct dibx000_i2c_master *mst,
     enum dibx000_i2c_interface intf)
{
 if (mst->device_rev > DIB3000MC && mst->selected_interface != intf) {
  dprintk("selecting interface: %d\n", intf);
  mst->selected_interface = intf;
  return dibx000_write_word(mst, mst->base_reg + 4, intf);
 }
 return 0;
}
