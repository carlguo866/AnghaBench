
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ldns_pkt_rcode ;
struct TYPE_5__ {TYPE_1__* _header; } ;
typedef TYPE_2__ ldns_pkt ;
struct TYPE_4__ {int _rcode; } ;



ldns_pkt_rcode
ldns_pkt_get_rcode(const ldns_pkt *packet)
{
 return packet->_header->_rcode;
}
