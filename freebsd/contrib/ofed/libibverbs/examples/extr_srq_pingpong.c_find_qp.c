
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pingpong_context {TYPE_1__** qp; } ;
struct TYPE_2__ {int qp_num; } ;



__attribute__((used)) static int find_qp(int qpn, struct pingpong_context *ctx, int num_qp)
{
 int i;

 for (i = 0; i < num_qp; ++i)
  if (ctx->qp[i]->qp_num == qpn)
   return i;

 return -1;
}
