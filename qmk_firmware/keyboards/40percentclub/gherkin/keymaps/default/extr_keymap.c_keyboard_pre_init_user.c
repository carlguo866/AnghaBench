
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B0 ;
 int D5 ;
 int setPinOutput (int ) ;

void keyboard_pre_init_user(void) {



  setPinOutput(D5);
  setPinOutput(B0);
}
