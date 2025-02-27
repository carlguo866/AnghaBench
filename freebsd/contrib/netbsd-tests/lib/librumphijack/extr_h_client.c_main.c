
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct pollfd {int fd; scalar_t__ revents; void* events; } ;
typedef int fd_set ;


 scalar_t__ ENFILE ;
 int ENOTSUP ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_MAXFD ;
 int INFTIM ;
 int O_RDWR ;
 void* POLLIN ;
 scalar_t__ POLLNVAL ;
 int STDIN_FILENO ;
 int close (int) ;
 int closefrom (int ) ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int fcntl (int ,int ) ;
 int open (char*,int ) ;
 int pipe (int*) ;
 int poll (struct pollfd*,int,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ strcmp (char*,char*) ;

int
main(int argc, char *argv[])
{

 if (argc != 2) {
  errx(1, "need testname as param");
 }

 if (strcmp(argv[1], "select_timeout") == 0) {
  fd_set rfds;
  struct timeval tv;
  int pipefd[2];
  int rv;

  tv.tv_sec = 0;
  tv.tv_usec = 1;

  if (pipe(pipefd) == -1)
   err(EXIT_FAILURE, "pipe");
  FD_ZERO(&rfds);
  FD_SET(pipefd[0], &rfds);

  rv = select(pipefd[0]+1, &rfds, ((void*)0), ((void*)0), &tv);
  if (rv == -1)
   err(EXIT_FAILURE, "select");
  if (rv != 0)
   errx(EXIT_FAILURE, "select succesful");

  if (FD_ISSET(pipefd[0], &rfds))
   errx(EXIT_FAILURE, "stdin fileno is still set");
  return EXIT_SUCCESS;
 } else if (strcmp(argv[1], "select_allunset") == 0) {
  fd_set fds;
  struct timeval tv;
  int rv;

  tv.tv_sec = 0;
  tv.tv_usec = 1;

  FD_ZERO(&fds);

  rv = select(100, &fds, &fds, &fds, &tv);
  if (rv == -1)
   err(EXIT_FAILURE, "select");
  if (rv != 0)
   errx(EXIT_FAILURE, "select succesful");

  rv = select(0, ((void*)0), ((void*)0), ((void*)0), &tv);
  if (rv == -1)
   err(EXIT_FAILURE, "select2");
  if (rv != 0)
   errx(EXIT_FAILURE, "select2 succesful");

  return EXIT_SUCCESS;
 } else if (strcmp(argv[1], "invafd") == 0) {
  struct pollfd pfd[2];
  int fd, rv;

  fd = open("/rump/dev/null", O_RDWR);
  if (fd == -1)
   err(EXIT_FAILURE, "open");
  close(fd);

  pfd[0].fd = STDIN_FILENO;
  pfd[0].events = POLLIN;
  pfd[1].fd = fd;
  pfd[1].events = POLLIN;

  if ((rv = poll(pfd, 2, INFTIM)) != 1)
   errx(EXIT_FAILURE, "poll unexpected rv %d (%d)",
       rv, errno);
  if (pfd[1].revents != POLLNVAL || pfd[0].revents != 0)
   errx(EXIT_FAILURE, "poll unexpected revents");

  return EXIT_SUCCESS;
 } else if (strcmp(argv[1], "fdoff8") == 0) {

  (void)closefrom(0);

  int fd;

  do {
   if ((fd = open("/dev/null", O_RDWR)) == -1)
    err(EXIT_FAILURE, "open1");
  } while (fd < 7);
  fd = open("/dev/null", O_RDWR);
  if (fd != -1 || errno != ENFILE)
   errx(EXIT_FAILURE, "unexpected fd8 %d %d", fd, errno);
  if (fcntl(0, F_MAXFD) != 7)
   errx(EXIT_FAILURE, "fd leak?");
  if ((fd = open("/rump/dev/null", O_RDWR)) != 8)
   errx(EXIT_FAILURE, "rump open %d %d", fd, errno);
  return EXIT_SUCCESS;
 } else {
  return ENOTSUP;
 }
}
