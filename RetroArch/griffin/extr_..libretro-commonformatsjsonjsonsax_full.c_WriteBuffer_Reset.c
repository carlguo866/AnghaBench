
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* WriteBuffer ;
struct TYPE_3__ {scalar_t__ used; } ;



__attribute__((used)) static void WriteBuffer_Reset(WriteBuffer buffer)
{
   buffer->used = 0;
}
