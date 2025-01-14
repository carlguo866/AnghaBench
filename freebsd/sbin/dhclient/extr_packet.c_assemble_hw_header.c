
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hlen; struct ether_header* haddr; } ;
struct interface_info {TYPE_1__ hw_address; } ;
struct ether_header {unsigned char* ether_dhost; unsigned char* ether_shost; int ether_type; } ;


 int ETHERTYPE_IP ;
 int ETHER_HEADER_SIZE ;
 int htons (int ) ;
 int memcpy (unsigned char*,struct ether_header*,int) ;
 int memset (unsigned char*,int,int) ;

void
assemble_hw_header(struct interface_info *interface, unsigned char *buf,
    int *bufix)
{
 struct ether_header eh;

 memset(eh.ether_dhost, 0xff, sizeof(eh.ether_dhost));
 if (interface->hw_address.hlen == sizeof(eh.ether_shost))
  memcpy(eh.ether_shost, interface->hw_address.haddr,
      sizeof(eh.ether_shost));
 else
  memset(eh.ether_shost, 0x00, sizeof(eh.ether_shost));

 eh.ether_type = htons(ETHERTYPE_IP);

 memcpy(&buf[*bufix], &eh, ETHER_HEADER_SIZE);
 *bufix += ETHER_HEADER_SIZE;
}
