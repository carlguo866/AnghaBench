
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ isQuiet; } ;
typedef TYPE_1__ THFile ;



void THFile_pedantic(THFile *self)
{
  self->isQuiet = 0;
}
