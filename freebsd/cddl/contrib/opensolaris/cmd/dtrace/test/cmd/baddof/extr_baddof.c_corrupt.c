
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACEIOC_ENABLE ;
 int LEAP_DISTANCE ;
 int O_RDWR ;
 int close (int) ;
 int dup2 (int,int) ;
 int fatal (char*) ;
 int ioctl (int,int ,unsigned char*) ;
 int lrand48 () ;
 int open (char*,int ) ;
 int printf (char*,int) ;

void
corrupt(int fd, unsigned char *buf, int len)
{
 static int ttl, valid;
 int bit, i;
 unsigned char saved;
 int val[LEAP_DISTANCE], pos[LEAP_DISTANCE];
 int new, rv;

again:
 printf("valid DOF #%d\n", valid++);





 for (bit = 0; bit < len * 8; bit++) {
  saved = buf[bit / 8];
  buf[bit / 8] ^= (1 << (bit % 8));

  if ((bit % 100) == 0)
   printf("%d\n", bit);

  if ((rv = ioctl(fd, DTRACEIOC_ENABLE, buf)) == -1) {



   buf[bit / 8] = saved;
   continue;
  }







  ttl += rv;

  if (ttl < 10000) {
   buf[bit / 8] = saved;
   continue;
  }

  printf("enabled %d probes; resetting device.\n", ttl);
  close(fd);

  new = open("/devices/pseudo/dtrace@0:dtrace", O_RDWR);

  if (new == -1)
   fatal("couldn't open DTrace pseudo device");

  if (new != fd) {
   dup2(new, fd);
   close(new);
  }

  ttl = 0;
  buf[bit / 8] = saved;
 }

 for (;;) {





  for (i = 0; i < LEAP_DISTANCE; i++) {



   bit = lrand48() % (len * 8);

   val[i] = buf[bit / 8];
   pos[i] = bit / 8;
   buf[bit / 8] ^= (1 << (bit % 8));
  }




  if ((rv = ioctl(fd, DTRACEIOC_ENABLE, buf)) > 0) {



   ttl += rv;
   goto again;
  }






  for (i = LEAP_DISTANCE - 1; i >= 0; i--)
   buf[pos[i]] = val[i];
 }
}
