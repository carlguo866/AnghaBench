
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tl_fetch_check (int) ;
 scalar_t__ tl_fetch_pad () ;
 int tl_fetch_raw_data (char*,int) ;

__attribute__((used)) static inline int tl_fetch_string_data (char *buf, int len) {
  if (tl_fetch_check (len) < 0) {
    return -1;
  }
  tl_fetch_raw_data (buf, len);
  if (tl_fetch_pad () < 0) {
    return -1;
  }
  return len;
}
