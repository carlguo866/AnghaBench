
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int dummy; } ;
struct alias_data {scalar_t__ maxpktsize; int * sport; int * dport; int * lnk; int * aport; } ;


 scalar_t__ RTSP_CONTROL_PORT_NUMBER_1 ;
 scalar_t__ RTSP_CONTROL_PORT_NUMBER_2 ;
 scalar_t__ TFTP_PORT_NUMBER ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
fingerprint(struct libalias *la, struct alias_data *ah)
{

 if (ah->dport != ((void*)0) && ah->aport != ((void*)0) && ah->sport != ((void*)0) &&
            ntohs(*ah->dport) == TFTP_PORT_NUMBER)
  return (0);
 if (ah->dport == ((void*)0) || ah->sport == ((void*)0) || ah->lnk == ((void*)0) ||
     ah->maxpktsize == 0)
  return (-1);
 if (ntohs(*ah->dport) == RTSP_CONTROL_PORT_NUMBER_1
     || ntohs(*ah->sport) == RTSP_CONTROL_PORT_NUMBER_1
     || ntohs(*ah->dport) == RTSP_CONTROL_PORT_NUMBER_2
     || ntohs(*ah->sport) == RTSP_CONTROL_PORT_NUMBER_2)
  return (0);
 return (-1);
}
