
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {int index; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;


 TYPE_1__* fh2id (void*) ;
 int ivtv_get_input (struct ivtv*,int ,struct v4l2_input*) ;

__attribute__((used)) static int ivtv_enum_input(struct file *file, void *fh, struct v4l2_input *vin)
{
 struct ivtv *itv = fh2id(fh)->itv;


 return ivtv_get_input(itv, vin->index, vin);
}
