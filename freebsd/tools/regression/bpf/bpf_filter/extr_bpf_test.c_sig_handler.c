
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAILED ;
 int FATAL ;
 int PASSED ;
 int exit (int ) ;
 int expect_signal ;
 int printf (char*,...) ;
 int verbose ;

__attribute__((used)) static void
sig_handler(int sig)
{

 if (expect_signal == 0) {
  if (verbose > 1)
   printf("Received unexpected signal %d:\t", sig);
  if (verbose > 0)
   printf("FATAL\n");
  exit(FATAL);
 }
 if (expect_signal != sig) {
  if (verbose > 1)
   printf("Expected signal %d but got %d:\t",
       expect_signal, sig);
  if (verbose > 0)
   printf("FAILED\n");
  exit(FAILED);
 }

 if (verbose > 1)
  printf("Expected and got signal %d:\t", sig);
 if (verbose > 0)
  printf("PASSED\n");

 exit(PASSED);
}
