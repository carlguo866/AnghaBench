
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;



__attribute__((used)) static int nfs_sockaddr_match_ipaddr4(const struct sockaddr *sa1,
          const struct sockaddr *sa2)
{
 const struct sockaddr_in *sin1 = (const struct sockaddr_in *)sa1;
 const struct sockaddr_in *sin2 = (const struct sockaddr_in *)sa2;

 return sin1->sin_addr.s_addr == sin2->sin_addr.s_addr;
}
