
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar {int dummy; } ;



__attribute__((used)) static int gfar_reglen(struct net_device *dev)
{
 return sizeof (struct gfar);
}
