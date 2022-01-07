
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int int64_t ;


 int C_SNPRINTF_APPEND_CHAR (char) ;
 scalar_t__ C_SNPRINTF_FLAG_ZERO ;

__attribute__((used)) static int c_itoa(char *buf, size_t buf_size, int64_t num, int base, int flags,
                  int field_width) {
  char tmp[40];
  int i = 0, k = 0, neg = 0;

  if (num < 0) {
    neg++;
    num = -num;
  }


  do {
    int rem = num % base;
    if (rem < 10) {
      tmp[k++] = '0' + rem;
    } else {
      tmp[k++] = 'a' + (rem - 10);
    }
    num /= base;
  } while (num > 0);


  if (flags && C_SNPRINTF_FLAG_ZERO) {
    while (k < field_width && k < (int) sizeof(tmp) - 1) {
      tmp[k++] = '0';
    }
  }


  if (neg) {
    tmp[k++] = '-';
  }


  while (--k >= 0) {
    C_SNPRINTF_APPEND_CHAR(tmp[k]);
  }

  return i;
}
