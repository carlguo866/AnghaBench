
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_trigger_data {struct action_data** actions; TYPE_1__* attrs; } ;
struct action_data {scalar_t__ handler; } ;
struct TYPE_2__ {unsigned int n_actions; } ;


 int EINVAL ;
 scalar_t__ HANDLER_ONCHANGE ;
 scalar_t__ HANDLER_ONMATCH ;
 scalar_t__ HANDLER_ONMAX ;
 int onmatch_create (struct hist_trigger_data*,struct action_data*) ;
 int track_data_create (struct hist_trigger_data*,struct action_data*) ;

__attribute__((used)) static int create_actions(struct hist_trigger_data *hist_data)
{
 struct action_data *data;
 unsigned int i;
 int ret = 0;

 for (i = 0; i < hist_data->attrs->n_actions; i++) {
  data = hist_data->actions[i];

  if (data->handler == HANDLER_ONMATCH) {
   ret = onmatch_create(hist_data, data);
   if (ret)
    break;
  } else if (data->handler == HANDLER_ONMAX ||
      data->handler == HANDLER_ONCHANGE) {
   ret = track_data_create(hist_data, data);
   if (ret)
    break;
  } else {
   ret = -EINVAL;
   break;
  }
 }

 return ret;
}
