
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hand_state; scalar_t__ state; } ;
struct TYPE_5__ {TYPE_1__ statem; } ;
typedef TYPE_2__ SSL ;


 scalar_t__ MSG_FLOW_UNINITED ;
 scalar_t__ TLS_ST_BEFORE ;

int SSL_in_before(const SSL *s)
{







    return (s->statem.hand_state == TLS_ST_BEFORE)
        && (s->statem.state == MSG_FLOW_UNINITED);
}
