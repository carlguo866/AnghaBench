
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int dl_signal (int const,int ) ;
 int kwrite (int,char const*,int) ;
 int pending_signals ;
 int sigint_immediate_handler ;

__attribute__((used)) static void sigint_handler (const int sig) {
  const char message[] = "SIGINT handled.\n";
  kwrite (2, message, sizeof (message) - (size_t)1);

  pending_signals |= (1 << sig);
  dl_signal (sig, sigint_immediate_handler);
}
