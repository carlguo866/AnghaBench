
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RATE_ALL ;
 int RATE_GET ;
 int RATE_PUT ;
 int UPRINTF (char*,char*) ;
 int code ;
 int fprintf (int ,char*,...) ;
 int rcvbuf_size ;
 int sndbuf_size ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strsuftoi (char*) ;
 int ttyout ;

void
setxferbuf(int argc, char *argv[])
{
 int size, dir;

 if (argc != 2) {
 usage:
  UPRINTF("usage: %s size\n", argv[0]);
  code = -1;
  return;
 }
 if (strcasecmp(argv[0], "sndbuf") == 0)
  dir = RATE_PUT;
 else if (strcasecmp(argv[0], "rcvbuf") == 0)
  dir = RATE_GET;
 else if (strcasecmp(argv[0], "xferbuf") == 0)
  dir = RATE_ALL;
 else
  goto usage;

 if ((size = strsuftoi(argv[1])) == -1)
  goto usage;

 if (size == 0) {
  fprintf(ttyout, "%s: size must be positive.\n", argv[0]);
  goto usage;
 }

 if (dir & RATE_PUT)
  sndbuf_size = size;
 if (dir & RATE_GET)
  rcvbuf_size = size;
 fprintf(ttyout, "Socket buffer sizes: send %d, receive %d.\n",
     sndbuf_size, rcvbuf_size);
 code = 0;
}
