
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int index_left_; int index_right_or_value_; } ;
typedef TYPE_1__ HuffmanTree ;
typedef scalar_t__ BROTLI_BOOL ;


 int BROTLI_DCHECK (int) ;
 scalar_t__ BROTLI_FALSE ;
 scalar_t__ BROTLI_TRUE ;

BROTLI_BOOL BrotliSetDepth(
    int p0, HuffmanTree* pool, uint8_t* depth, int max_depth) {
  int stack[16];
  int level = 0;
  int p = p0;
  BROTLI_DCHECK(max_depth <= 15);
  stack[0] = -1;
  while (BROTLI_TRUE) {
    if (pool[p].index_left_ >= 0) {
      level++;
      if (level > max_depth) return BROTLI_FALSE;
      stack[level] = pool[p].index_right_or_value_;
      p = pool[p].index_left_;
      continue;
    } else {
      depth[pool[p].index_right_or_value_] = (uint8_t)level;
    }
    while (level >= 0 && stack[level] == -1) level--;
    if (level < 0) return BROTLI_TRUE;
    p = stack[level];
    stack[level] = -1;
  }
}
