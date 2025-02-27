
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tracer_string_format {int hlist; } ;
struct TYPE_2__ {int tmsn; } ;
struct tracer_event {TYPE_1__ string_event; } ;
struct mlx5_fw_tracer {struct hlist_head* hash; } ;
struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int hlist_add_head (int *,struct hlist_head*) ;
 struct tracer_string_format* kzalloc (int,int ) ;
 size_t mlx5_tracer_message_hash (int ) ;

__attribute__((used)) static struct tracer_string_format *mlx5_tracer_message_insert(struct mlx5_fw_tracer *tracer,
              struct tracer_event *tracer_event)
{
 struct hlist_head *head =
  &tracer->hash[mlx5_tracer_message_hash(tracer_event->string_event.tmsn)];
 struct tracer_string_format *cur_string;

 cur_string = kzalloc(sizeof(*cur_string), GFP_KERNEL);
 if (!cur_string)
  return ((void*)0);

 hlist_add_head(&cur_string->hlist, head);

 return cur_string;
}
