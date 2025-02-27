
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINESIZE ;
 int fflush (int *) ;
 char* g_errbuf ;
 int g_fail ;
 char* g_funcname ;
 int g_pass ;
 char* g_testdesc ;
 int g_total ;
 int memset (void*,int ,int) ;
 int printf (char*) ;
 int snprintf (char*,int,char const*,...) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

void
checkstr(const char *expected, const char *got, size_t explen, const char *desc)
{
 int len;
 int failed;
 char sbuf[LINESIZE];

 memset((void *)sbuf, 0, LINESIZE);
 snprintf(g_testdesc, LINESIZE, desc);

 failed = 1;
 g_total++;
 if (strncmp(expected, got, explen) == 0) {
  len = snprintf(sbuf, LINESIZE, "ok");
  g_pass++;
  failed = 0;
 } else {
  len = snprintf(sbuf, LINESIZE, "not ok");
  snprintf(g_errbuf, LINESIZE,
      " : Expected %s, but got %s", expected, got);
  g_fail++;
 }
 snprintf(sbuf + len, LINESIZE - len, " %d - %s (%s)",
     g_total, g_funcname, g_testdesc);
 printf(sbuf);
 if (failed)
  printf(g_errbuf);
 printf("\n");
 fflush(((void*)0));
 memset((void *)g_errbuf, 0, LINESIZE);
 memset((void *)g_testdesc, 0, LINESIZE);
}
