
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_send_wc {TYPE_1__* send_buf; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {scalar_t__* context; } ;


 int ib_free_send_mad (TYPE_1__*) ;
 int rdma_destroy_ah (scalar_t__,int ) ;

__attribute__((used)) static void send_handler(struct ib_mad_agent *agent,
    struct ib_mad_send_wc *mad_send_wc)
{
 if (mad_send_wc->send_buf->context[0])
  rdma_destroy_ah(mad_send_wc->send_buf->context[0], 0);
 ib_free_send_mad(mad_send_wc->send_buf);
}
