
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int intpcm_read_t ;
struct TYPE_2__ {scalar_t__ format; int * read; } ;


 scalar_t__ AFMT_ENCODING (int ) ;
 int FEEDFORMAT_TAB_SIZE ;
 TYPE_1__* feed_format_ops ;

intpcm_read_t *
feeder_format_read_op(uint32_t format)
{
 int i;

 for (i = 0; i < FEEDFORMAT_TAB_SIZE; i++) {
  if (AFMT_ENCODING(format) == feed_format_ops[i].format)
   return (feed_format_ops[i].read);
 }

 return (((void*)0));
}
