
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg {int dummy; } ;


 int devlink_fmsg_obj_nest_start (struct devlink_fmsg*) ;
 int devlink_fmsg_pair_nest_start (struct devlink_fmsg*,char*) ;

int mlx5e_reporter_named_obj_nest_start(struct devlink_fmsg *fmsg, char *name)
{
 int err;

 err = devlink_fmsg_pair_nest_start(fmsg, name);
 if (err)
  return err;

 err = devlink_fmsg_obj_nest_start(fmsg);
 if (err)
  return err;

 return 0;
}
