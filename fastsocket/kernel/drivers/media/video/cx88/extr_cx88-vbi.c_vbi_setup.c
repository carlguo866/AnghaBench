
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dummy; } ;


 int VBI_LINE_COUNT ;
 int VBI_LINE_LENGTH ;
 unsigned int vbibufs ;

__attribute__((used)) static int
vbi_setup(struct videobuf_queue *q, unsigned int *count, unsigned int *size)
{
 *size = VBI_LINE_COUNT * VBI_LINE_LENGTH * 2;
 if (0 == *count)
  *count = vbibufs;
 if (*count < 2)
  *count = 2;
 if (*count > 32)
  *count = 32;
 return 0;
}
