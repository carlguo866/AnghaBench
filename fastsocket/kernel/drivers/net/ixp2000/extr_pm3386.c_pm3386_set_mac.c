
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int pm3386_port_reg_write (int,int,int,int) ;

void pm3386_set_mac(int port, u8 *mac)
{
 pm3386_port_reg_write(port, 0x308, 0x100, (mac[1] << 8) | mac[0]);
 pm3386_port_reg_write(port, 0x309, 0x100, (mac[3] << 8) | mac[2]);
 pm3386_port_reg_write(port, 0x30a, 0x100, (mac[5] << 8) | mac[4]);
}
