
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int _edns_z; } ;
typedef TYPE_1__ ldns_pkt ;



void
ldns_pkt_set_edns_z(ldns_pkt *packet, uint16_t z)
{
 packet->_edns_z = z;
}
