
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int checkerrormsg(const char* buf) {
  return strcmp(buf, "%%FAIL\n") == 0;
}
