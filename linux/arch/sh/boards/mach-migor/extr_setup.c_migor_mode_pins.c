
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_PIN0 ;
 int MODE_PIN1 ;
 int MODE_PIN5 ;

__attribute__((used)) static int migor_mode_pins(void)
{





 return MODE_PIN0 | MODE_PIN1 | MODE_PIN5;
}
