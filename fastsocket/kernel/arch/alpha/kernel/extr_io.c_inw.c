
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ioport_map (unsigned long,int) ;
 int ioread16 (int ) ;

u16 inw(unsigned long port)
{
 return ioread16(ioport_map(port, 2));
}
