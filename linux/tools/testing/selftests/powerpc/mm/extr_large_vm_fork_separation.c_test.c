
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int FAIL_IF (int) ;
 int MAP_ANONYMOUS ;
 int* MAP_FAILED ;
 int MAP_FIXED_NOREPLACE ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SKIP_IF (int) ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int _SC_PAGESIZE ;
 int barrier () ;
 int exit (int ) ;
 int fork () ;
 int getpid () ;
 int* mmap (void*,unsigned long,int,int,int,int ) ;
 int perror (char*) ;
 int pipe (int*) ;
 int printf (char*,...) ;
 int read (int,int*,int) ;
 unsigned long sysconf (int ) ;
 int waitpid (int,int*,int ) ;
 int write (int,int*,int) ;

__attribute__((used)) static int test(void)
{
 int p2c[2], c2p[2], rc, status, c, *p;
 unsigned long page_size;
 pid_t pid;

 page_size = sysconf(_SC_PAGESIZE);
 SKIP_IF(page_size != 65536);


 p = mmap((void *)(512ul << 40), page_size, PROT_READ | PROT_WRITE,
  MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED_NOREPLACE, -1, 0);
 if (p == MAP_FAILED) {
  perror("mmap");
  printf("Error: couldn't mmap(), confirm kernel has 4TB support?\n");
  return 1;
 }

 printf("parent writing %p = 1\n", p);
 *p = 1;

 FAIL_IF(pipe(p2c) == -1 || pipe(c2p) == -1);

 pid = fork();
 if (pid == 0) {
  FAIL_IF(read(p2c[0], &c, 1) != 1);

  pid = getpid();
  printf("child writing  %p = %d\n", p, pid);
  *p = pid;

  FAIL_IF(write(c2p[1], &c, 1) != 1);
  FAIL_IF(read(p2c[0], &c, 1) != 1);
  exit(0);
 }

 c = 0;
 FAIL_IF(write(p2c[1], &c, 1) != 1);
 FAIL_IF(read(c2p[0], &c, 1) != 1);


 barrier();

 rc = 0;
 printf("parent reading %p = %d\n", p, *p);
 if (*p != 1) {
  printf("Error: BUG! parent saw child's write! *p = %d\n", *p);
  rc = 1;
 }

 FAIL_IF(write(p2c[1], &c, 1) != 1);
 FAIL_IF(waitpid(pid, &status, 0) == -1);
 FAIL_IF(!WIFEXITED(status) || WEXITSTATUS(status));

 if (rc == 0)
  printf("success: test completed OK\n");

 return rc;
}
