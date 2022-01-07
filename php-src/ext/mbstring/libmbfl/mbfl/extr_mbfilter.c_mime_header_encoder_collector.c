
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int pos; } ;
struct mime_header_encoder_data {int status1; size_t linehead; size_t firstindent; size_t encnamelen; TYPE_1__* block_filter; TYPE_3__ tmpdev; TYPE_3__ outdev; int lwsplen; int lwsp; } ;
struct TYPE_10__ {int (* filter_function ) (int,TYPE_1__*) ;} ;


 int mbfl_convert_filter_devcat (TYPE_1__*,TYPE_3__*) ;
 int mbfl_memory_device_devcat (TYPE_3__*,TYPE_3__*) ;
 int mbfl_memory_device_output (int,TYPE_3__*) ;
 int mbfl_memory_device_reset (TYPE_3__*) ;
 int mbfl_memory_device_strncat (TYPE_3__*,int ,int ) ;
 int stub1 (int,TYPE_1__*) ;
 int stub2 (int,TYPE_1__*) ;

__attribute__((used)) static int
mime_header_encoder_collector(int c, void *data)
{
 static int qp_table[256] = {
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0, 1, 0, 1,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
 };

 size_t n;
 struct mime_header_encoder_data *pe = (struct mime_header_encoder_data *)data;

 switch (pe->status1) {
 case 11:
  (*pe->block_filter->filter_function)(c, pe->block_filter);
  break;

 default:
  if (c <= 0x00ff && !qp_table[(c & 0xff)]) {
   mbfl_memory_device_output(c, &pe->tmpdev);
   pe->status1 = 1;
  } else if (pe->status1 == 0 && c == 0x20) {
   mbfl_memory_device_output(c, &pe->tmpdev);
  } else {
   if (pe->tmpdev.pos < 74 && c == 0x20) {
    n = pe->outdev.pos - pe->linehead + pe->tmpdev.pos + pe->firstindent;
    if (n > 74) {
     mbfl_memory_device_strncat(&pe->outdev, pe->lwsp, pe->lwsplen);
     pe->linehead = pe->outdev.pos;
     pe->firstindent = 0;
    } else if (pe->outdev.pos > 0) {
     mbfl_memory_device_output(0x20, &pe->outdev);
    }
    mbfl_memory_device_devcat(&pe->outdev, &pe->tmpdev);
    mbfl_memory_device_reset(&pe->tmpdev);
    pe->status1 = 0;
   } else {
    n = pe->outdev.pos - pe->linehead + pe->encnamelen + pe->firstindent;
    if (n > 60) {
     mbfl_memory_device_strncat(&pe->outdev, pe->lwsp, pe->lwsplen);
     pe->linehead = pe->outdev.pos;
     pe->firstindent = 0;
    } else if (pe->outdev.pos > 0) {
     mbfl_memory_device_output(0x20, &pe->outdev);
    }
    mbfl_convert_filter_devcat(pe->block_filter, &pe->tmpdev);
    mbfl_memory_device_reset(&pe->tmpdev);
    (*pe->block_filter->filter_function)(c, pe->block_filter);
    pe->status1 = 11;
   }
  }
  break;
 }

 return c;
}
