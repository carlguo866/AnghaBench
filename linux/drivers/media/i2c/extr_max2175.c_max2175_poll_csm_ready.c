
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int dummy; } ;


 int max2175_poll_timeout (struct max2175*,int,int,int,int ,int) ;
 int mxm_err (struct max2175*,char*) ;

__attribute__((used)) static int max2175_poll_csm_ready(struct max2175 *ctx)
{
 int ret;

 ret = max2175_poll_timeout(ctx, 69, 1, 1, 0, 50000);
 if (ret)
  mxm_err(ctx, "csm not ready\n");

 return ret;
}
