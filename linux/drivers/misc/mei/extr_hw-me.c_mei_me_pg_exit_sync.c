
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_hw {scalar_t__ d0i3_supported; } ;
struct mei_device {int dummy; } ;


 int mei_me_d0i3_exit_sync (struct mei_device*) ;
 int mei_me_pg_legacy_exit_sync (struct mei_device*) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;

int mei_me_pg_exit_sync(struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);

 if (hw->d0i3_supported)
  return mei_me_d0i3_exit_sync(dev);
 else
  return mei_me_pg_legacy_exit_sync(dev);
}
