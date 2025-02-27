
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct rmsgpack_read_callbacks {int (* read_map_start ) (unsigned int,void*) ;} ;
typedef int RFILE ;


 int rmsgpack_read (int *,struct rmsgpack_read_callbacks*,void*) ;
 int stub1 (unsigned int,void*) ;

__attribute__((used)) static int read_map(RFILE *fd, uint32_t len,
        struct rmsgpack_read_callbacks *callbacks, void *data)
{
   int rv;
   unsigned i;

   if (callbacks->read_map_start &&
         (rv = callbacks->read_map_start(len, data)) < 0)
      return rv;

   for (i = 0; i < len; i++)
   {
      if ((rv = rmsgpack_read(fd, callbacks, data)) < 0)
         return rv;
      if ((rv = rmsgpack_read(fd, callbacks, data)) < 0)
         return rv;
   }

   return 0;
}
