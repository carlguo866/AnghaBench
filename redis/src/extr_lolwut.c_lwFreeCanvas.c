
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pixels; } ;
typedef TYPE_1__ lwCanvas ;


 int zfree (TYPE_1__*) ;

void lwFreeCanvas(lwCanvas *canvas) {
    zfree(canvas->pixels);
    zfree(canvas);
}
