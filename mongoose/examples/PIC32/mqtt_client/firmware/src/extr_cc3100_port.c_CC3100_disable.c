
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIB_PIN ;
 int HIB_PORT ;
 int PLIB_PORTS_PinClear (int ,int ,int ) ;
 int PORTS_ID_0 ;

void CC3100_disable() {
  PLIB_PORTS_PinClear(PORTS_ID_0, HIB_PORT, HIB_PIN);
}
