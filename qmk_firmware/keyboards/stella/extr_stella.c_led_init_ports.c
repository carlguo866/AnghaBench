
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B3 ;
 int B7 ;
 int setPinOutput (int ) ;

void led_init_ports(void) {
  setPinOutput(B3);
  setPinOutput(B7);
}
