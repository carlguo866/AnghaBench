
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C6 ;
 int C7 ;
 int E6 ;
 int matrix_init_user () ;
 int setPinOutput (int ) ;

void matrix_init_kb(void) {



    setPinOutput(C6);
    setPinOutput(E6);
    setPinOutput(C7);
    matrix_init_user();
}
