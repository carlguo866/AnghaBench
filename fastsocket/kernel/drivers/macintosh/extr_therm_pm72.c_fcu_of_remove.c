
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device {int dummy; } ;


 int i2c_del_driver (int *) ;
 int therm_pm72_driver ;

__attribute__((used)) static int fcu_of_remove(struct of_device* dev)
{
 i2c_del_driver(&therm_pm72_driver);

 return 0;
}
