
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvin_dev {int dummy; } ;


 int VNINTS_REG ;
 int rvin_read (struct rvin_dev*,int ) ;

__attribute__((used)) static u32 rvin_get_interrupt_status(struct rvin_dev *vin)
{
 return rvin_read(vin, VNINTS_REG);
}
