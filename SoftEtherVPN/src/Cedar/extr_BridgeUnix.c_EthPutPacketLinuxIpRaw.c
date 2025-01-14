
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


typedef int UINT ;
struct TYPE_23__ {int DstIP; scalar_t__ SrcIP; scalar_t__ Checksum; } ;
typedef TYPE_4__ UCHAR ;
struct TYPE_26__ {int MyPhysicalIP; int YourIP; TYPE_5__* RawIcmp; TYPE_5__* RawUdp; TYPE_5__* RawTcp; int RawIpMyMacAddr; int RawIpYourMacAddr; scalar_t__ RawIp_HasError; } ;
struct TYPE_22__ {TYPE_4__* IPv4Header; } ;
struct TYPE_21__ {TYPE_18__* TCPHeader; TYPE_1__* UDPHeader; } ;
struct TYPE_25__ {int BroadcastPacket; scalar_t__ TypeL3; scalar_t__ TypeL4; int PacketSize; TYPE_4__* PacketData; TYPE_3__ L3; int IPv4PayloadSize; TYPE_2__ L4; TYPE_4__* IPv4PayloadData; int MacAddressDest; int MacAddressSrc; } ;
struct TYPE_24__ {int RawIP_HeaderIncludeFlag; } ;
struct TYPE_20__ {scalar_t__ Checksum; } ;
struct TYPE_19__ {scalar_t__ Checksum; } ;
typedef TYPE_5__ SOCK ;
typedef TYPE_6__ PKT ;
typedef TYPE_4__ IPV4_HEADER ;
typedef int IP ;
typedef TYPE_8__ ETH ;


 scalar_t__ CalcChecksumForIPv4 (scalar_t__,int,int ,TYPE_18__*,int ,int ) ;
 scalar_t__ Cmp (int ,int ,int) ;
 int Copy (int ,int ,int) ;
 int EthProcessIpPacketInnerIpRaw (TYPE_8__*,TYPE_6__*) ;
 int Free (void*) ;
 int FreePacket (TYPE_6__*) ;
 scalar_t__ IPToUINT (int *) ;
 int IPV4_GET_HEADER_LEN (TYPE_4__*) ;
 int IP_PROTO_TCP ;
 scalar_t__ IpChecksum (TYPE_4__*,int) ;
 int IsValidUnicastMacAddress (int ) ;
 scalar_t__ IsZero (int ,int) ;
 int IsZeroIP (int *) ;
 scalar_t__ L3_ARPV4 ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L4_FRAGMENT ;
 scalar_t__ L4_ICMPV4 ;
 scalar_t__ L4_TCP ;
 scalar_t__ L4_UDP ;
 int MAX_PACKET_SIZE ;
 TYPE_6__* ParsePacket (void*,int) ;
 int SendTo (TYPE_5__*,int *,int ,TYPE_4__*,int) ;
 int UINTToIP (int *,int) ;

void EthPutPacketLinuxIpRaw(ETH *e, void *data, UINT size)
{
 PKT *p;
 SOCK *s = ((void*)0);

 if (e == ((void*)0) || data == ((void*)0))
 {
  return;
 }
 if (size < 14 || size > MAX_PACKET_SIZE || e->RawIp_HasError)
 {
  Free(data);
  return;
 }

 p = ParsePacket(data, size);
 if (p == ((void*)0))
 {
  Free(data);
  return;
 }

 if (p->BroadcastPacket || Cmp(p->MacAddressDest, e->RawIpMyMacAddr, 6) == 0)
 {
  if (IsValidUnicastMacAddress(p->MacAddressSrc))
  {
   Copy(e->RawIpYourMacAddr, p->MacAddressSrc, 6);
  }
 }

 if (IsZero(e->RawIpYourMacAddr, 6) || IsValidUnicastMacAddress(p->MacAddressSrc) == 0 ||
  (p->BroadcastPacket == 0 && Cmp(p->MacAddressDest, e->RawIpMyMacAddr, 6) != 0))
 {
  Free(data);
  FreePacket(p);
  return;
 }


 if (p->TypeL3 == L3_IPV4)
 {
  if (p->TypeL4 == L4_TCP)
  {
   if (IsZeroIP(&e->MyPhysicalIP) == 0)
   {
    s = e->RawTcp;
   }
  }
  else if (p->TypeL4 == L4_UDP)
  {
   if (EthProcessIpPacketInnerIpRaw(e, p) == 0)
   {
    s = e->RawUdp;
   }
  }
  else if (p->TypeL4 == L4_ICMPV4)
  {
   if (IsZeroIP(&e->MyPhysicalIP) == 0)
   {
    s = e->RawIcmp;
   }
  }
  else if (p->TypeL4 == L4_FRAGMENT)
  {
   if (IsZeroIP(&e->MyPhysicalIP) == 0)
   {
    s = e->RawIcmp;
   }
  }
 }
 else if (p->TypeL3 == L3_ARPV4)
 {
  EthProcessIpPacketInnerIpRaw(e, p);
 }

 if (s != ((void*)0) && p->L3.IPv4Header->DstIP != 0xffffffff && p->BroadcastPacket == 0 &&
  p->L3.IPv4Header->SrcIP == IPToUINT(&e->YourIP))
 {
  UCHAR *send_data = p->IPv4PayloadData;
  UCHAR *head = p->PacketData;
  UINT remove_header_size = (UINT)(send_data - head);

  if (p->PacketSize > remove_header_size)
  {
   IP dest;
   UINT send_data_size = p->PacketSize - remove_header_size;


   if (p->TypeL4 == L4_UDP)
   {
    p->L4.UDPHeader->Checksum = 0;
   }
   else if (p->TypeL4 == L4_TCP)
   {
    p->L4.TCPHeader->Checksum = 0;
    p->L4.TCPHeader->Checksum = CalcChecksumForIPv4(IPToUINT(&e->MyPhysicalIP),
     p->L3.IPv4Header->DstIP, IP_PROTO_TCP,
     p->L4.TCPHeader, p->IPv4PayloadSize, 0);
   }

   UINTToIP(&dest, p->L3.IPv4Header->DstIP);

   if (s->RawIP_HeaderIncludeFlag == 0)
   {
    SendTo(s, &dest, 0, send_data, send_data_size);
   }
   else
   {
    IPV4_HEADER *ip = p->L3.IPv4Header;

    ip->SrcIP = IPToUINT(&e->MyPhysicalIP);
    ip->Checksum = 0;
    ip->Checksum = IpChecksum(ip, IPV4_GET_HEADER_LEN(ip) * 4);

    SendTo(s, &dest, 0, ip, ((UCHAR *)p->PacketData - (UCHAR *)ip) + p->PacketSize);
   }
  }
 }

 FreePacket(p);
 Free(data);
}
