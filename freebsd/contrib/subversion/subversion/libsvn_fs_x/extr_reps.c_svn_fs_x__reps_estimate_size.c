
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int base_text_len; TYPE_1__* bases; TYPE_4__* reps; TYPE_3__* instructions; TYPE_2__* text; } ;
typedef TYPE_5__ svn_fs_x__reps_builder_t ;
typedef int apr_size_t ;
struct TYPE_10__ {int nelts; } ;
struct TYPE_9__ {int nelts; } ;
struct TYPE_8__ {int len; } ;
struct TYPE_7__ {int nelts; } ;



apr_size_t
svn_fs_x__reps_estimate_size(const svn_fs_x__reps_builder_t *builder)
{







  return (builder->text->len - builder->base_text_len) / 2
       + builder->instructions->nelts * 2
       + builder->reps->nelts * 2
       + builder->bases->nelts * 8
       + builder->base_text_len / 8
       + 100;
}
