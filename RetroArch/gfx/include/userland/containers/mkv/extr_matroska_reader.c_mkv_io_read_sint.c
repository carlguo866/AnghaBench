
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int offset; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;


 int mkv_io_read_uint (TYPE_1__*,int*) ;

__attribute__((used)) static int64_t mkv_io_read_sint(VC_CONTAINER_IO_T *io, int64_t *size)
{
   int64_t value, count = io->offset;
   value = mkv_io_read_uint(io, size);
   count = io->offset - count;

   switch(count)
   {
   case 1: value -= 0x3F; break;
   case 2: value -= 0x1FFF; break;
   case 3: value -= 0xFFFFF; break;
   case 4: value -= 0x7FFFFFF; break;
   default: break;
   }
   return value;
}
