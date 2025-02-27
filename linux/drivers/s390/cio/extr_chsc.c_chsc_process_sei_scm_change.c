
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_sei_nt0_area {int rs; } ;


 int CIO_CRW_EVENT (int,char*,...) ;
 int scm_update_information () ;

__attribute__((used)) static void chsc_process_sei_scm_change(struct chsc_sei_nt0_area *sei_area)
{
 int ret;

 CIO_CRW_EVENT(4, "chsc: scm change notification\n");
 if (sei_area->rs != 7)
  return;

 ret = scm_update_information();
 if (ret)
  CIO_CRW_EVENT(0, "chsc: updating change notification"
         " failed (rc=%d).\n", ret);
}
