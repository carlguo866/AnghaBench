
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cypress_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_put; } ;


 unsigned int cypress_buf_space_avail (struct cypress_buf*) ;
 int memcpy (unsigned int,char const*,unsigned int) ;

__attribute__((used)) static unsigned int cypress_buf_put(struct cypress_buf *cb, const char *buf,
 unsigned int count)
{

 unsigned int len;


 if (cb == ((void*)0))
  return 0;

 len = cypress_buf_space_avail(cb);
 if (count > len)
  count = len;

 if (count == 0)
  return 0;

 len = cb->buf_buf + cb->buf_size - cb->buf_put;
 if (count > len) {
  memcpy(cb->buf_put, buf, len);
  memcpy(cb->buf_buf, buf+len, count - len);
  cb->buf_put = cb->buf_buf + count - len;
 } else {
  memcpy(cb->buf_put, buf, count);
  if (count < len)
   cb->buf_put += count;
  else
   cb->buf_put = cb->buf_buf;
 }

 return count;

}
