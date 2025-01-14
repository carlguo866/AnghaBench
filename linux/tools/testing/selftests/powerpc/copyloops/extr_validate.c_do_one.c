
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFLEN ;
 unsigned long COPY_LOOP (char*,char*,unsigned long) ;
 int MIN_REDZONE ;
 int POISON ;
 int abort () ;
 scalar_t__ memcmp (char*,void*,int) ;
 int memcpy (char*,void*,unsigned long) ;
 int memset (char*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void do_one(char *src, char *dst, unsigned long src_off,
     unsigned long dst_off, unsigned long len, void *redzone,
     void *fill)
{
 char *srcp, *dstp;
 unsigned long ret;
 unsigned long i;

 srcp = src + MIN_REDZONE + src_off;
 dstp = dst + MIN_REDZONE + dst_off;

 memset(src, POISON, BUFLEN);
 memset(dst, POISON, BUFLEN);
 memcpy(srcp, fill, len);

 ret = COPY_LOOP(dstp, srcp, len);
 if (ret && ret != (unsigned long)dstp) {
  printf("(%p,%p,%ld) returned %ld\n", dstp, srcp, len, ret);
  abort();
 }

 if (memcmp(dstp, srcp, len)) {
  printf("(%p,%p,%ld) miscompare\n", dstp, srcp, len);
  printf("src: ");
  for (i = 0; i < len; i++)
   printf("%02x ", srcp[i]);
  printf("\ndst: ");
  for (i = 0; i < len; i++)
   printf("%02x ", dstp[i]);
  printf("\n");
  abort();
 }

 if (memcmp(dst, redzone, dstp - dst)) {
  printf("(%p,%p,%ld) redzone before corrupted\n",
         dstp, srcp, len);
  abort();
 }

 if (memcmp(dstp+len, redzone, dst+BUFLEN-(dstp+len))) {
  printf("(%p,%p,%ld) redzone after corrupted\n",
         dstp, srcp, len);
  abort();
 }
}
