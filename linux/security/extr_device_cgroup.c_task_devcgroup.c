
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct dev_cgroup {int dummy; } ;


 struct dev_cgroup* css_to_devcgroup (int ) ;
 int devices_cgrp_id ;
 int task_css (struct task_struct*,int ) ;

__attribute__((used)) static inline struct dev_cgroup *task_devcgroup(struct task_struct *task)
{
 return css_to_devcgroup(task_css(task, devices_cgrp_id));
}
