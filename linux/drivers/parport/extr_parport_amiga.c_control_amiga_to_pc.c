
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char PARPORT_CONTROL_AUTOFD ;
 unsigned char PARPORT_CONTROL_SELECT ;
 unsigned char PARPORT_CONTROL_STROBE ;

__attribute__((used)) static unsigned char control_amiga_to_pc(unsigned char control)
{
 return PARPORT_CONTROL_SELECT |
       PARPORT_CONTROL_AUTOFD | PARPORT_CONTROL_STROBE;


}
