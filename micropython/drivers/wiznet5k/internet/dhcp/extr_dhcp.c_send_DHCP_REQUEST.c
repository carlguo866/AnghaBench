
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int* OPT; void** ciaddr; int flags; } ;


 void** DHCP_CHADDR ;
 int DHCP_FLAGSUNICAST ;
 int DHCP_REQUEST ;
 int DHCP_SERVER_PORT ;
 void** DHCP_SIP ;
 int DHCP_SOCKET ;
 void** DHCP_allocated_ip ;
 int* HOST_NAME ;
 int OPT_SIZE ;
 int RIP_MSG_SIZE ;
 scalar_t__ STATE_DHCP_LEASED ;
 scalar_t__ STATE_DHCP_REREQUEST ;
 int dhcpClientIdentifier ;
 int dhcpMessageType ;
 int dhcpParamRequest ;
 int dhcpRequestedIPaddr ;
 int dhcpServerIdentifier ;
 int dhcpT1value ;
 int dhcpT2value ;
 scalar_t__ dhcp_state ;
 int dns ;
 int domainName ;
 int endOption ;
 int hostName ;
 int makeDHCPMSG () ;
 TYPE_1__* pDHCPMSG ;
 int performRouterDiscovery ;
 int printf (char*) ;
 int routersOnSubnet ;
 int sendto (int ,int*,int ,int*,int ) ;
 int staticRoute ;
 int subnetMask ;

void send_DHCP_REQUEST(void)
{
 int i;
 uint8_t ip[4];
 uint16_t k = 0;

   makeDHCPMSG();

   if(dhcp_state == STATE_DHCP_LEASED || dhcp_state == STATE_DHCP_REREQUEST)
   {
    *((uint8_t*)(&pDHCPMSG->flags)) = ((DHCP_FLAGSUNICAST & 0xFF00)>> 8);
    *((uint8_t*)(&pDHCPMSG->flags)+1) = (DHCP_FLAGSUNICAST & 0x00FF);
    pDHCPMSG->ciaddr[0] = DHCP_allocated_ip[0];
    pDHCPMSG->ciaddr[1] = DHCP_allocated_ip[1];
    pDHCPMSG->ciaddr[2] = DHCP_allocated_ip[2];
    pDHCPMSG->ciaddr[3] = DHCP_allocated_ip[3];
    ip[0] = DHCP_SIP[0];
    ip[1] = DHCP_SIP[1];
    ip[2] = DHCP_SIP[2];
    ip[3] = DHCP_SIP[3];
   }
   else
   {
    ip[0] = 255;
    ip[1] = 255;
    ip[2] = 255;
    ip[3] = 255;
   }

   k = 4;


 pDHCPMSG->OPT[k++] = dhcpMessageType;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_REQUEST;

 pDHCPMSG->OPT[k++] = dhcpClientIdentifier;
 pDHCPMSG->OPT[k++] = 0x07;
 pDHCPMSG->OPT[k++] = 0x01;
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[0];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[1];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[2];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[3];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[4];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[5];

   if(ip[3] == 255)
   {
  pDHCPMSG->OPT[k++] = dhcpRequestedIPaddr;
  pDHCPMSG->OPT[k++] = 0x04;
  pDHCPMSG->OPT[k++] = DHCP_allocated_ip[0];
  pDHCPMSG->OPT[k++] = DHCP_allocated_ip[1];
  pDHCPMSG->OPT[k++] = DHCP_allocated_ip[2];
  pDHCPMSG->OPT[k++] = DHCP_allocated_ip[3];

  pDHCPMSG->OPT[k++] = dhcpServerIdentifier;
  pDHCPMSG->OPT[k++] = 0x04;
  pDHCPMSG->OPT[k++] = DHCP_SIP[0];
  pDHCPMSG->OPT[k++] = DHCP_SIP[1];
  pDHCPMSG->OPT[k++] = DHCP_SIP[2];
  pDHCPMSG->OPT[k++] = DHCP_SIP[3];
 }


 pDHCPMSG->OPT[k++] = hostName;
 pDHCPMSG->OPT[k++] = 0;
 for(i = 0 ; HOST_NAME[i] != 0; i++)
    pDHCPMSG->OPT[k++] = HOST_NAME[i];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[3];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[4];
 pDHCPMSG->OPT[k++] = DHCP_CHADDR[5];
 pDHCPMSG->OPT[k - (i+3+1)] = i+3;

 pDHCPMSG->OPT[k++] = dhcpParamRequest;
 pDHCPMSG->OPT[k++] = 0x08;
 pDHCPMSG->OPT[k++] = subnetMask;
 pDHCPMSG->OPT[k++] = routersOnSubnet;
 pDHCPMSG->OPT[k++] = dns;
 pDHCPMSG->OPT[k++] = domainName;
 pDHCPMSG->OPT[k++] = dhcpT1value;
 pDHCPMSG->OPT[k++] = dhcpT2value;
 pDHCPMSG->OPT[k++] = performRouterDiscovery;
 pDHCPMSG->OPT[k++] = staticRoute;
 pDHCPMSG->OPT[k++] = endOption;

 for (i = k; i < OPT_SIZE; i++) pDHCPMSG->OPT[i] = 0;





 sendto(DHCP_SOCKET, (uint8_t *)pDHCPMSG, RIP_MSG_SIZE, ip, DHCP_SERVER_PORT);

}
