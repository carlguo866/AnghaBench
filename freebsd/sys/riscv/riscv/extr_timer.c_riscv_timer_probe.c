
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
riscv_timer_probe(device_t dev)
{

 device_set_desc(dev, "RISC-V Timer");

 return (BUS_PROBE_DEFAULT);
}
