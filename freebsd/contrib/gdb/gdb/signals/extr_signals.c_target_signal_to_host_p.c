
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int do_target_signal_to_host (int,int*) ;

int
target_signal_to_host_p (enum target_signal oursig)
{
  int oursig_ok;
  do_target_signal_to_host (oursig, &oursig_ok);
  return oursig_ok;
}
