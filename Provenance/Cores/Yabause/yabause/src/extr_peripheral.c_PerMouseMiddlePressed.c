
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* mousebits; } ;
typedef TYPE_1__ PerMouse_struct ;



void PerMouseMiddlePressed(PerMouse_struct * mouse) {
   *(mouse->mousebits) |= 4;
}
