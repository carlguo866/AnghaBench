
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_12__ {int family; } ;
struct TYPE_16__ {TYPE_1__ ip; } ;
struct TYPE_15__ {int seen_family; void* seen_at; void* used_at; } ;
struct TYPE_14__ {TYPE_9__ ip_port; int timestamp; } ;
struct TYPE_13__ {void* ret_timestamp; int ret_ip_port; int timestamp; TYPE_9__ ip_port; } ;
typedef int IP_Port ;
typedef TYPE_2__ IPPTsPng ;
typedef TYPE_3__ IPPTs ;
typedef TYPE_4__ Client_entry ;
typedef int Assoc ;


 TYPE_2__* entry_assoc (TYPE_4__*,TYPE_9__*) ;
 int entry_heard_store (TYPE_4__*,TYPE_3__ const*) ;
 void* unix_time () ;

__attribute__((used)) static void candidates_update_assoc(const Assoc *assoc, Client_entry *entry, uint8_t used, const IPPTs *ippts_send,
                                    const IP_Port *ipp_recv)
{
    if (!assoc || !entry || !ippts_send)
        return;

    IPPTsPng *ipptsp = entry_assoc(entry, &ippts_send->ip_port);

    if (!ipptsp)
        return;

    if (used)
        entry->used_at = unix_time();




    if (ipp_recv) {
        ipptsp->ip_port = ippts_send->ip_port;
        ipptsp->timestamp = ippts_send->timestamp;
        ipptsp->ret_ip_port = *ipp_recv;
        ipptsp->ret_timestamp = unix_time();

        entry->seen_at = unix_time();
        entry->seen_family = ippts_send->ip_port.ip.family;

        return;
    }

    entry_heard_store(entry, ippts_send);
}
