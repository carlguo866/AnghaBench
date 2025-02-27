
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* current_picture_ptr; int * dest; } ;
struct TYPE_9__ {int second_field; int tff; scalar_t__ field_mode; TYPE_4__ s; } ;
typedef TYPE_3__ VC1Context ;
struct TYPE_8__ {TYPE_1__* f; } ;
struct TYPE_7__ {scalar_t__* linesize; } ;
typedef TYPE_4__ MpegEncContext ;


 int ff_init_block_index (TYPE_4__*) ;

__attribute__((used)) static inline void init_block_index(VC1Context *v)
{
    MpegEncContext *s = &v->s;
    ff_init_block_index(s);
    if (v->field_mode && !(v->second_field ^ v->tff)) {
        s->dest[0] += s->current_picture_ptr->f->linesize[0];
        s->dest[1] += s->current_picture_ptr->f->linesize[1];
        s->dest[2] += s->current_picture_ptr->f->linesize[2];
    }
}
