
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int ENOIOCTLCMD ;

__attribute__((used)) static int llc_ui_ioctl(struct socket *sock, unsigned int cmd,
   unsigned long arg)
{
 return -ENOIOCTLCMD;
}
