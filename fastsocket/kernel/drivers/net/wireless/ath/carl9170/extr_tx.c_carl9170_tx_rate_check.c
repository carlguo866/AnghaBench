
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ar9170 {int dummy; } ;
struct TYPE_2__ {scalar_t__ phy_control; } ;
struct _carl9170_tx_superframe {TYPE_1__ f; } ;



__attribute__((used)) static bool carl9170_tx_rate_check(struct ar9170 *ar, struct sk_buff *_dest,
       struct sk_buff *_src)
{
 struct _carl9170_tx_superframe *dest, *src;

 dest = (void *) _dest->data;
 src = (void *) _src->data;
 return (dest->f.phy_control == src->f.phy_control);
}
