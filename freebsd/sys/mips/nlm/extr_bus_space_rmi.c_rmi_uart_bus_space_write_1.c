
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;



__attribute__((used)) static void
rmi_uart_bus_space_write_1(void *tag, bus_space_handle_t handle,
    bus_size_t offset, u_int8_t value)
{
 *(volatile u_int32_t *)(handle + offset) = value;
}
