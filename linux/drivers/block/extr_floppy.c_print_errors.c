
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*) ;
 int ST0 ;
 int ST0_ECE ;
 int ST1 ;
 int ST1_CRC ;
 int ST1_MAM ;
 int ST1_ND ;
 int ST2 ;
 int ST2_BC ;
 int ST2_CRC ;
 int ST2_MAM ;
 int ST2_WC ;
 int pr_cont (char*,...) ;
 int probing ;
 int tell_sector () ;

__attribute__((used)) static void print_errors(void)
{
 DPRINT("");
 if (ST0 & ST0_ECE) {
  pr_cont("Recalibrate failed!");
 } else if (ST2 & ST2_CRC) {
  pr_cont("data CRC error");
  tell_sector();
 } else if (ST1 & ST1_CRC) {
  pr_cont("CRC error");
  tell_sector();
 } else if ((ST1 & (ST1_MAM | ST1_ND)) ||
     (ST2 & ST2_MAM)) {
  if (!probing) {
   pr_cont("sector not found");
   tell_sector();
  } else
   pr_cont("probe failed...");
 } else if (ST2 & ST2_WC) {
  pr_cont("wrong cylinder");
 } else if (ST2 & ST2_BC) {
  pr_cont("bad cylinder");
 } else {
  pr_cont("unknown error. ST[0..2] are: 0x%x 0x%x 0x%x",
   ST0, ST1, ST2);
  tell_sector();
 }
 pr_cont("\n");
}
