
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int* arg; } ;


 int srp_dev_loss_tmo ;
 int srp_fast_io_fail_tmo ;
 int srp_parse_tmo (int*,char const*) ;
 int srp_reconnect_delay ;
 int srp_tmo_valid (int,int,int) ;

__attribute__((used)) static int srp_tmo_set(const char *val, const struct kernel_param *kp)
{
 int tmo, res;

 res = srp_parse_tmo(&tmo, val);
 if (res)
  goto out;

 if (kp->arg == &srp_reconnect_delay)
  res = srp_tmo_valid(tmo, srp_fast_io_fail_tmo,
        srp_dev_loss_tmo);
 else if (kp->arg == &srp_fast_io_fail_tmo)
  res = srp_tmo_valid(srp_reconnect_delay, tmo, srp_dev_loss_tmo);
 else
  res = srp_tmo_valid(srp_reconnect_delay, srp_fast_io_fail_tmo,
        tmo);
 if (res)
  goto out;
 *(int *)kp->arg = tmo;

out:
 return res;
}
