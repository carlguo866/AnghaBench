
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_hash_ctx ;


 unsigned int WRITE_BUFFER_SIZE ;
 scalar_t__ ce_write_flush (int *,int) ;
 int memcpy (scalar_t__,void*,unsigned int) ;
 scalar_t__ write_buffer ;
 unsigned int write_buffer_len ;

__attribute__((used)) static int ce_write(git_hash_ctx *context, int fd, void *data, unsigned int len)
{
 while (len) {
  unsigned int buffered = write_buffer_len;
  unsigned int partial = WRITE_BUFFER_SIZE - buffered;
  if (partial > len)
   partial = len;
  memcpy(write_buffer + buffered, data, partial);
  buffered += partial;
  if (buffered == WRITE_BUFFER_SIZE) {
   write_buffer_len = buffered;
   if (ce_write_flush(context, fd))
    return -1;
   buffered = 0;
  }
  write_buffer_len = buffered;
  len -= partial;
  data = (char *) data + partial;
 }
 return 0;
}
