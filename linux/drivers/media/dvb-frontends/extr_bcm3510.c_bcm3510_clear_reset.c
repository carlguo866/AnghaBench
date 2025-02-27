
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bcm3510_state {int dummy; } ;
struct TYPE_5__ {int RESET; } ;
struct TYPE_6__ {TYPE_1__ APSTAT1_a2; scalar_t__ raw; } ;
typedef TYPE_2__ bcm3510_register_value ;


 int ETIMEDOUT ;
 int HZ ;
 int bcm3510_readB (struct bcm3510_state*,int,TYPE_2__*) ;
 int bcm3510_writeB (struct bcm3510_state*,int,TYPE_2__) ;
 int deb_info (char*) ;
 int jiffies ;
 int msleep (int) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int bcm3510_clear_reset(struct bcm3510_state *st)
{
 bcm3510_register_value v;
 int ret;
 unsigned long t;

 v.raw = 0;
 if ((ret = bcm3510_writeB(st,0xa0,v)) < 0)
  return ret;

 t = jiffies + 3*HZ;
 while (time_before(jiffies, t)) {
  msleep(10);
  if ((ret = bcm3510_readB(st,0xa2,&v)) < 0)
   return ret;


  if (!v.APSTAT1_a2.RESET)
   return 0;
 }
 deb_info("reset clear timed out\n");
 return -ETIMEDOUT;
}
