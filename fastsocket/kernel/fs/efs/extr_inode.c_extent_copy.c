
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ex_magic; unsigned int ex_bn; unsigned int ex_length; unsigned int ex_offset; } ;
struct TYPE_6__ {scalar_t__* raw; TYPE_1__ cooked; } ;
typedef TYPE_2__ efs_extent ;



__attribute__((used)) static inline void extent_copy(efs_extent *src, efs_extent *dst) {






 dst->cooked.ex_magic = (unsigned int) src->raw[0];
 dst->cooked.ex_bn = ((unsigned int) src->raw[1] << 16) |
    ((unsigned int) src->raw[2] << 8) |
    ((unsigned int) src->raw[3] << 0);
 dst->cooked.ex_length = (unsigned int) src->raw[4];
 dst->cooked.ex_offset = ((unsigned int) src->raw[5] << 16) |
    ((unsigned int) src->raw[6] << 8) |
    ((unsigned int) src->raw[7] << 0);
 return;
}
