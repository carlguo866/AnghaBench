
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int min (int,int) ;

__attribute__((used)) static u8 cm_ack_timeout(u8 ca_ack_delay, u8 packet_life_time)
{
 int ack_timeout = packet_life_time + 1;

 if (ack_timeout >= ca_ack_delay)
  ack_timeout += (ca_ack_delay >= (ack_timeout - 1));
 else
  ack_timeout = ca_ack_delay +
         (ack_timeout >= (ca_ack_delay - 1));

 return min(31, ack_timeout);
}
