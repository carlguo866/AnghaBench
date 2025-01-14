
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent_record {unsigned int ts; unsigned int size; void* data; } ;
struct pevent {int dummy; } ;
struct TYPE_2__ {int index; unsigned long long timestamp; int page_size; struct pevent_record* next; void* page; } ;





 unsigned long long TS_SHIFT ;
 void* calc_index (void*,int) ;
 TYPE_1__* cpu_data ;
 void* data2host4 (struct pevent*,void*) ;
 void* data2host8 (struct pevent*,void*) ;
 int die (char*,...) ;
 int get_next_page (int) ;
 int header_page_data_offset ;
 int header_page_size_size ;
 int header_page_ts_size ;
 struct pevent_record* malloc_or_die (int) ;
 int memset (struct pevent_record*,int ,int) ;
 unsigned int ts4host (unsigned int) ;
 unsigned int type_len4host (unsigned int) ;

struct pevent_record *trace_peek_data(struct pevent *pevent, int cpu)
{
 struct pevent_record *data;
 void *page = cpu_data[cpu].page;
 int idx = cpu_data[cpu].index;
 void *ptr = page + idx;
 unsigned long long extend;
 unsigned int type_len_ts;
 unsigned int type_len;
 unsigned int delta;
 unsigned int length = 0;

 if (cpu_data[cpu].next)
  return cpu_data[cpu].next;

 if (!page)
  return ((void*)0);

 if (!idx) {

  if (header_page_ts_size != 8)
   die("expected a long long type for timestamp");
  cpu_data[cpu].timestamp = data2host8(pevent, ptr);
  ptr += 8;
  switch (header_page_size_size) {
  case 4:
   cpu_data[cpu].page_size = data2host4(pevent, ptr);
   ptr += 4;
   break;
  case 8:
   cpu_data[cpu].page_size = data2host8(pevent, ptr);
   ptr += 8;
   break;
  default:
   die("bad long size");
  }
  ptr = cpu_data[cpu].page + header_page_data_offset;
 }

read_again:
 idx = calc_index(ptr, cpu);

 if (idx >= cpu_data[cpu].page_size) {
  get_next_page(cpu);
  return trace_peek_data(pevent, cpu);
 }

 type_len_ts = data2host4(pevent, ptr);
 ptr += 4;

 type_len = type_len4host(type_len_ts);
 delta = ts4host(type_len_ts);

 switch (type_len) {
 case 130:
  if (!delta)
   die("error, hit unexpected end of page");
  length = data2host4(pevent, ptr);
  ptr += 4;
  length *= 4;
  ptr += length;
  goto read_again;

 case 129:
  extend = data2host4(pevent, ptr);
  ptr += 4;
  extend <<= TS_SHIFT;
  extend += delta;
  cpu_data[cpu].timestamp += extend;
  goto read_again;

 case 128:
  ptr += 12;
  break;
 case 0:
  length = data2host4(pevent, ptr);
  ptr += 4;
  die("here! length=%d", length);
  break;
 default:
  length = type_len * 4;
  break;
 }

 cpu_data[cpu].timestamp += delta;

 data = malloc_or_die(sizeof(*data));
 memset(data, 0, sizeof(*data));

 data->ts = cpu_data[cpu].timestamp;
 data->size = length;
 data->data = ptr;
 ptr += length;

 cpu_data[cpu].index = calc_index(ptr, cpu);
 cpu_data[cpu].next = data;

 return data;
}
