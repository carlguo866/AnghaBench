
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mv88e6060_port_to_phy_addr(int port)
{
 if (port >= 0 && port <= 5)
  return port;
 return -1;
}
