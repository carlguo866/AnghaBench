
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin6_port; int sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin6 ;


 int AF_INET6 ;
 int bind (int,struct sockaddr const*,int) ;
 int htons (int) ;

__attribute__((used)) static int
sockv6_bind(int s, int port)
{
 struct sockaddr_in6 sin6 = {
  .sin6_len = sizeof(sin6),
  .sin6_family = AF_INET6,
 };

 sin6.sin6_port = htons(port);
 return (bind(s, (const struct sockaddr *)&sin6, sizeof(sin6)));
}
