
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t UTF8Position (size_t,size_t,int) ;

__attribute__((used)) static size_t DecideMultiByteStatsLevel(size_t pos, size_t len, size_t mask,
                                        const uint8_t *data) {
  size_t counts[3] = { 0 };
  size_t max_utf8 = 1;
  size_t last_c = 0;
  size_t i;
  for (i = 0; i < len; ++i) {
    size_t c = data[(pos + i) & mask];
    ++counts[UTF8Position(last_c, c, 2)];
    last_c = c;
  }
  if (counts[2] < 500) {
    max_utf8 = 1;
  }
  if (counts[1] + counts[2] < 25) {
    max_utf8 = 0;
  }
  return max_utf8;
}
