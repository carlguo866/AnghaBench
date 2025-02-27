
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ option; int size; } ;


 int SHUT_RDWR ;
 int TEST_CNT ;
 int buf ;
 int client_connect () ;
 int custom ;
 scalar_t__ dst_addr ;
 scalar_t__ fork_pid ;
 int free (int ) ;
 int init_bandwidth_test (int ) ;
 int init_latency_test (int ) ;
 int malloc (int ) ;
 int opt_bandwidth ;
 int opt_latency ;
 int optimization ;
 int perror (char*) ;
 int printf (char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 int rs ;
 int rs_close (int ) ;
 int rs_shutdown (int ,int ) ;
 int run_test () ;
 int server_connect () ;
 int server_listen () ;
 scalar_t__ size_option ;
 TYPE_1__* test_size ;
 int transfer_size ;
 scalar_t__ use_fork ;
 int waitpid (scalar_t__,int *,int ) ;

__attribute__((used)) static int run(void)
{
 int i, ret = 0;

 buf = malloc(!custom ? test_size[TEST_CNT - 1].size : transfer_size);
 if (!buf) {
  perror("malloc");
  return -1;
 }

 if (!dst_addr) {
  ret = server_listen();
  if (ret)
   goto free;
 }

 printf("%-10s%-8s%-8s%-8s%-8s%8s %10s%13s\n",
        "name", "bytes", "xfers", "iters", "total", "time", "Gb/sec", "usec/xfer");
 if (!custom) {
  optimization = opt_latency;
  ret = dst_addr ? client_connect() : server_connect();
  if (ret)
   goto free;

  for (i = 0; i < TEST_CNT && !fork_pid; i++) {
   if (test_size[i].option > size_option)
    continue;
   init_latency_test(test_size[i].size);
   run_test();
  }
  if (fork_pid)
   waitpid(fork_pid, ((void*)0), 0);
  else
   rs_shutdown(rs, SHUT_RDWR);
  rs_close(rs);

  if (!dst_addr && use_fork && !fork_pid)
   goto free;

  optimization = opt_bandwidth;
  ret = dst_addr ? client_connect() : server_connect();
  if (ret)
   goto free;
  for (i = 0; i < TEST_CNT && !fork_pid; i++) {
   if (test_size[i].option > size_option)
    continue;
   init_bandwidth_test(test_size[i].size);
   run_test();
  }
 } else {
  ret = dst_addr ? client_connect() : server_connect();
  if (ret)
   goto free;

  if (!fork_pid)
   ret = run_test();
 }

 if (fork_pid)
  waitpid(fork_pid, ((void*)0), 0);
 else
  rs_shutdown(rs, SHUT_RDWR);
 rs_close(rs);
free:
 free(buf);
 return ret;
}
