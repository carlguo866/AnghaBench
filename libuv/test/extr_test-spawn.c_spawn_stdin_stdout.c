
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ASSERT (int) ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int ,char*,int) ;
 int write (int,char*,size_t) ;

void spawn_stdin_stdout(void) {
  char buf[1024];
  char* pbuf;
  for (;;) {
    ssize_t r, w, c;
    do {
      r = read(0, buf, sizeof buf);
    } while (r == -1 && errno == EINTR);
    if (r == 0) {
      return;
    }
    ASSERT(r > 0);
    c = r;
    pbuf = buf;
    while (c) {
      do {
        w = write(1, pbuf, (size_t)c);
      } while (w == -1 && errno == EINTR);
      ASSERT(w >= 0);
      pbuf = pbuf + w;
      c = c - w;
    }
  }
}
