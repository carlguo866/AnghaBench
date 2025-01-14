
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fw_trace_data {int msg; int event_id; int lost; int timestamp; } ;
struct devlink_fmsg {int dummy; } ;


 int devlink_fmsg_bool_pair_put (struct devlink_fmsg*,char*,int ) ;
 int devlink_fmsg_obj_nest_end (struct devlink_fmsg*) ;
 int devlink_fmsg_obj_nest_start (struct devlink_fmsg*) ;
 int devlink_fmsg_string_pair_put (struct devlink_fmsg*,char*,int ) ;
 int devlink_fmsg_u64_pair_put (struct devlink_fmsg*,char*,int ) ;
 int devlink_fmsg_u8_pair_put (struct devlink_fmsg*,char*,int ) ;

__attribute__((used)) static int
mlx5_devlink_fmsg_fill_trace(struct devlink_fmsg *fmsg,
        struct mlx5_fw_trace_data *trace_data)
{
 int err;

 err = devlink_fmsg_obj_nest_start(fmsg);
 if (err)
  return err;

 err = devlink_fmsg_u64_pair_put(fmsg, "timestamp", trace_data->timestamp);
 if (err)
  return err;

 err = devlink_fmsg_bool_pair_put(fmsg, "lost", trace_data->lost);
 if (err)
  return err;

 err = devlink_fmsg_u8_pair_put(fmsg, "event_id", trace_data->event_id);
 if (err)
  return err;

 err = devlink_fmsg_string_pair_put(fmsg, "msg", trace_data->msg);
 if (err)
  return err;

 err = devlink_fmsg_obj_nest_end(fmsg);
 if (err)
  return err;
 return 0;
}
