
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;


 int ECANCELED ;
 int EFAULT ;
 int STDIN_FILENO ;
 int abs_hor ;
 int abs_ver ;
 int btn1_down ;
 int btn2_down ;
 int btn3_down ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ read (int ,char*,int) ;
 scalar_t__ send_event (int) ;
 int stderr ;
 int wheel ;

__attribute__((used)) static int keyboard(int fd)
{
 char buf[128];
 ssize_t ret, i;

 ret = read(STDIN_FILENO, buf, sizeof(buf));
 if (ret == 0) {
  fprintf(stderr, "Read HUP on stdin\n");
  return -EFAULT;
 } else if (ret < 0) {
  fprintf(stderr, "Cannot read stdin: %m\n");
  return -errno;
 }

 for (i = 0; i < ret; ++i) {
  switch (buf[i]) {
  case '1':
   btn1_down = !btn1_down;
   ret = send_event(fd);
   if (ret)
    return ret;
   break;
  case '2':
   btn2_down = !btn2_down;
   ret = send_event(fd);
   if (ret)
    return ret;
   break;
  case '3':
   btn3_down = !btn3_down;
   ret = send_event(fd);
   if (ret)
    return ret;
   break;
  case 'a':
   abs_hor = -20;
   ret = send_event(fd);
   abs_hor = 0;
   if (ret)
    return ret;
   break;
  case 'd':
   abs_hor = 20;
   ret = send_event(fd);
   abs_hor = 0;
   if (ret)
    return ret;
   break;
  case 'w':
   abs_ver = -20;
   ret = send_event(fd);
   abs_ver = 0;
   if (ret)
    return ret;
   break;
  case 's':
   abs_ver = 20;
   ret = send_event(fd);
   abs_ver = 0;
   if (ret)
    return ret;
   break;
  case 'r':
   wheel = 1;
   ret = send_event(fd);
   wheel = 0;
   if (ret)
    return ret;
   break;
  case 'f':
   wheel = -1;
   ret = send_event(fd);
   wheel = 0;
   if (ret)
    return ret;
   break;
  case 'q':
   return -ECANCELED;
  default:
   fprintf(stderr, "Invalid input: %c\n", buf[i]);
  }
 }

 return 0;
}
