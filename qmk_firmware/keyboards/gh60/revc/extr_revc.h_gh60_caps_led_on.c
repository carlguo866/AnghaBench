
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B2 ;
 int setPinOutput (int ) ;
 int writePinLow (int ) ;

inline void gh60_caps_led_on(void) { setPinOutput(B2); writePinLow(B2); }
