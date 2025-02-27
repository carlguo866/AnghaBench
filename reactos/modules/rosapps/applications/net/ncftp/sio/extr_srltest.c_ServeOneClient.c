
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
typedef int cliAddrStr ;
typedef int buf ;
typedef int bbuf ;
typedef int SReadlineInfo ;


 char* AddrToAddrStr (char*,int,struct sockaddr_in*,int,char*) ;
 scalar_t__ InitSReadlineInfo (int *,int,char*,int,int) ;
 int SClose (int,int) ;
 int SReadline (int *,char*,int) ;
 int SWrite (int,char*,int,int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,int,char*) ;
 scalar_t__ getpid () ;
 scalar_t__ islower (char) ;
 int kTimeoutErr ;
 int printf (char*,int,...) ;
 int stderr ;
 char* strerror (int ) ;
 char toupper (char) ;

__attribute__((used)) static void
ServeOneClient(int sockfd, struct sockaddr_in *cliAddr)
{
 char buf[80], cliAddrStr[64];
 char bbuf[320];
 int nread, nwrote, i;
 SReadlineInfo srl;

 printf("subserver[%d]: started, connected to %s.\n", (int) getpid(),
  AddrToAddrStr(cliAddrStr, sizeof(cliAddrStr), cliAddr, 1, "<%h:%p>")
 );

 if (InitSReadlineInfo(&srl, sockfd, bbuf, sizeof(bbuf), 5) < 0) {
  fprintf(stderr, "subserver[%d]: InitSReadlineInfo error: %s\n",
   (int) getpid(), strerror(errno));
  exit(1);
 }
 for (;;) {
  nread = SReadline(&srl, buf, sizeof(buf));
  if (nread == 0) {
   break;
  } else if (nread == kTimeoutErr) {
   printf("subserver[%d]: idle\n", (int) getpid());
   continue;
  } else if (nread < 0) {
   fprintf(stderr, "subserver[%d]: read error: %s\n",
    (int) getpid(), strerror(errno));
   break;
  }
  for (i=0; i<nread; i++)
   if (islower(buf[i]))
    buf[i] = toupper(buf[i]);
  nwrote = SWrite(sockfd, buf, nread, 15);
  if (nwrote < 0) {
   fprintf(stderr, "subserver[%d]: write error: %s\n",
    (int) getpid(), strerror(errno));
   break;
  }
 }
 (void) SClose(sockfd, 10);
 printf("subserver[%d]: done.\n", (int) getpid());
 exit(0);
}
