
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_char (char) ;

__attribute__((used)) static void log_str (char *s) {
  while (*s) {
    log_char (*s);
    s++;
  }
}
