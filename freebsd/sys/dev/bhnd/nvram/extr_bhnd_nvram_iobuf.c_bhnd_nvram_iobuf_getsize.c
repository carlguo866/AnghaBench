
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_iobuf {size_t size; } ;
struct bhnd_nvram_io {int dummy; } ;



__attribute__((used)) static size_t
bhnd_nvram_iobuf_getsize(struct bhnd_nvram_io *io)
{
 struct bhnd_nvram_iobuf *iobuf = (struct bhnd_nvram_iobuf *)io;
 return (iobuf->size);
}
