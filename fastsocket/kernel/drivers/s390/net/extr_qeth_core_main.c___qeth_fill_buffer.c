
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; char* data; } ;
struct qdio_buffer {TYPE_1__* element; } ;
struct TYPE_2__ {char* addr; int length; scalar_t__ eflags; } ;


 unsigned long PAGE_SIZE ;
 scalar_t__ SBAL_EFLAGS_FIRST_FRAG ;
 scalar_t__ SBAL_EFLAGS_LAST_FRAG ;
 scalar_t__ SBAL_EFLAGS_MIDDLE_FRAG ;

__attribute__((used)) static inline void __qeth_fill_buffer(struct sk_buff *skb,
 struct qdio_buffer *buffer, int is_tso, int *next_element_to_fill,
 int offset)
{
 int length = skb->len;
 int length_here;
 int element;
 char *data;
 int first_lap ;

 element = *next_element_to_fill;
 data = skb->data;
 first_lap = (is_tso == 0 ? 1 : 0);

 if (offset >= 0) {
  data = skb->data + offset;
  length -= offset;
  first_lap = 0;
 }

 while (length > 0) {

  length_here = PAGE_SIZE - ((unsigned long) data % PAGE_SIZE);
  if (length < length_here)
   length_here = length;

  buffer->element[element].addr = data;
  buffer->element[element].length = length_here;
  length -= length_here;
  if (!length) {
   if (first_lap)
    buffer->element[element].eflags = 0;
   else
    buffer->element[element].eflags =
        SBAL_EFLAGS_LAST_FRAG;
  } else {
   if (first_lap)
    buffer->element[element].eflags =
        SBAL_EFLAGS_FIRST_FRAG;
   else
    buffer->element[element].eflags =
        SBAL_EFLAGS_MIDDLE_FRAG;
  }
  data += length_here;
  element++;
  first_lap = 0;
 }
 *next_element_to_fill = element;
}
