
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct htc_target {TYPE_3__* dev; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
struct TYPE_6__ {TYPE_2__* ar; } ;
struct TYPE_5__ {TYPE_1__* htc_ops; } ;
struct TYPE_4__ {void (* flush_txep ) (struct htc_target*,int,int ) ;} ;


 void stub1 (struct htc_target*,int,int ) ;

__attribute__((used)) static inline void ath6kl_htc_flush_txep(struct htc_target *target,
      enum htc_endpoint_id endpoint,
      u16 tag)
{
 return target->dev->ar->htc_ops->flush_txep(target, endpoint, tag);
}
