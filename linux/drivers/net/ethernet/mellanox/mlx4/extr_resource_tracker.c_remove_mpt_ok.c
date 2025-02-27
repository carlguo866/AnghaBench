
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct res_mpt {TYPE_1__ com; } ;


 int EBUSY ;
 int EPERM ;
 scalar_t__ RES_MPT_BUSY ;
 scalar_t__ RES_MPT_RESERVED ;

__attribute__((used)) static int remove_mpt_ok(struct res_mpt *res)
{
 if (res->com.state == RES_MPT_BUSY)
  return -EBUSY;
 else if (res->com.state != RES_MPT_RESERVED)
  return -EPERM;

 return 0;
}
