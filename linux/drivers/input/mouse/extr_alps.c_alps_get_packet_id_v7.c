
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char V7_PACKET_ID_IDLE ;
 unsigned char V7_PACKET_ID_MULTI ;
 unsigned char V7_PACKET_ID_NEW ;
 unsigned char V7_PACKET_ID_TWO ;
 unsigned char V7_PACKET_ID_UNKNOWN ;

__attribute__((used)) static unsigned char alps_get_packet_id_v7(char *byte)
{
 unsigned char packet_id;

 if (byte[4] & 0x40)
  packet_id = V7_PACKET_ID_TWO;
 else if (byte[4] & 0x01)
  packet_id = V7_PACKET_ID_MULTI;
 else if ((byte[0] & 0x10) && !(byte[4] & 0x43))
  packet_id = V7_PACKET_ID_NEW;
 else if (byte[1] == 0x00 && byte[4] == 0x00)
  packet_id = V7_PACKET_ID_IDLE;
 else
  packet_id = V7_PACKET_ID_UNKNOWN;

 return packet_id;
}
