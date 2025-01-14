
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int name; struct net_device* net_dev; } ;
struct net_device {int dummy; } ;
struct i2400m {int bus_bm_retries; int (* bus_dev_start ) (struct i2400m*) ;int ready; int * work_queue; int (* bus_dev_stop ) (struct i2400m*) ;struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;
typedef enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;


 int EL3RST ;
 int ENOMEM ;
 int I2400M_BRI_MAC_REINIT ;
 int I2400M_BRI_SOFT ;
 int WIMAX_ST_UNINITIALIZED ;
 int * create_singlethread_workqueue (int ) ;
 int d_fnend (int,struct device*,char*,struct net_device*,struct i2400m*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int destroy_workqueue (int *) ;
 int dev_err (struct device*,char*,...) ;
 int i2400m_check_mac_addr (struct i2400m*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_dev_bootstrap (struct i2400m*,int) ;
 int i2400m_dev_initialize (struct i2400m*) ;
 int i2400m_firmware_check (struct i2400m*) ;
 int i2400m_rx_release (struct i2400m*) ;
 int i2400m_rx_setup (struct i2400m*) ;
 int i2400m_tx_release (struct i2400m*) ;
 int i2400m_tx_setup (struct i2400m*) ;
 int stub1 (struct i2400m*) ;
 int stub2 (struct i2400m*) ;
 int wimax_state_change (struct wimax_dev*,int ) ;

__attribute__((used)) static
int __i2400m_dev_start(struct i2400m *i2400m, enum i2400m_bri flags)
{
 int result;
 struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
 struct net_device *net_dev = wimax_dev->net_dev;
 struct device *dev = i2400m_dev(i2400m);
 int times = i2400m->bus_bm_retries;

 d_fnstart(3, dev, "(i2400m %p)\n", i2400m);
retry:
 result = i2400m_dev_bootstrap(i2400m, flags);
 if (result < 0) {
  dev_err(dev, "cannot bootstrap device: %d\n", result);
  goto error_bootstrap;
 }
 result = i2400m_tx_setup(i2400m);
 if (result < 0)
  goto error_tx_setup;
 result = i2400m_rx_setup(i2400m);
 if (result < 0)
  goto error_rx_setup;
 i2400m->work_queue = create_singlethread_workqueue(wimax_dev->name);
 if (i2400m->work_queue == ((void*)0)) {
  result = -ENOMEM;
  dev_err(dev, "cannot create workqueue\n");
  goto error_create_workqueue;
 }
 result = i2400m->bus_dev_start(i2400m);
 if (result < 0)
  goto error_bus_dev_start;
 result = i2400m_firmware_check(i2400m);
 if (result < 0)
  goto error_fw_check;

 result = i2400m_check_mac_addr(i2400m);
 if (result < 0)
  goto error_check_mac_addr;
 i2400m->ready = 1;
 wimax_state_change(wimax_dev, WIMAX_ST_UNINITIALIZED);
 result = i2400m_dev_initialize(i2400m);
 if (result < 0)
  goto error_dev_initialize;


 d_fnend(3, dev, "(net_dev %p [i2400m %p]) = %d\n",
  net_dev, i2400m, result);
 return result;

error_dev_initialize:
error_check_mac_addr:
error_fw_check:
 i2400m->bus_dev_stop(i2400m);
error_bus_dev_start:
 destroy_workqueue(i2400m->work_queue);
error_create_workqueue:
 i2400m_rx_release(i2400m);
error_rx_setup:
 i2400m_tx_release(i2400m);
error_tx_setup:
error_bootstrap:
 if (result == -EL3RST && times-- > 0) {
  flags = I2400M_BRI_SOFT|I2400M_BRI_MAC_REINIT;
  goto retry;
 }
 d_fnend(3, dev, "(net_dev %p [i2400m %p]) = %d\n",
  net_dev, i2400m, result);
 return result;
}
