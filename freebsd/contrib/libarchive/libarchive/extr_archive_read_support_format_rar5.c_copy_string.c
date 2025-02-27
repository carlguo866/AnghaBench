
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int window_mask; int write_ptr; int solid_offset; int * window_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct archive_read {int dummy; } ;
typedef size_t ssize_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 struct rar5* get_context (struct archive_read*) ;

__attribute__((used)) static int copy_string(struct archive_read* a, int len, int dist) {
 struct rar5* rar = get_context(a);
 const uint64_t cmask = rar->cstate.window_mask;
 const uint64_t write_ptr = rar->cstate.write_ptr +
     rar->cstate.solid_offset;
 int i;

 if (rar->cstate.window_buf == ((void*)0))
  return ARCHIVE_FATAL;
 for(i = 0; i < len; i++) {
  const ssize_t write_idx = (write_ptr + i) & cmask;
  const ssize_t read_idx = (write_ptr + i - dist) & cmask;
  rar->cstate.window_buf[write_idx] =
      rar->cstate.window_buf[read_idx];
 }

 rar->cstate.write_ptr += len;
 return ARCHIVE_OK;
}
