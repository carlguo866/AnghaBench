
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_channel {TYPE_2__* efx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* ev_init ) (struct efx_channel*) ;} ;


 int stub1 (struct efx_channel*) ;

__attribute__((used)) static inline int efx_nic_init_eventq(struct efx_channel *channel)
{
 return channel->efx->type->ev_init(channel);
}
