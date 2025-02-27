
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lima_sched_task {struct drm_lima_gp_frame* frame; } ;
struct lima_sched_pipe {int dummy; } ;
struct drm_lima_gp_frame {scalar_t__* frame; } ;


 int EINVAL ;
 int LIMA_GP_PLBUCL_END_ADDR ;
 int LIMA_GP_PLBUCL_START_ADDR ;
 int LIMA_GP_PLBU_ALLOC_END_ADDR ;
 int LIMA_GP_PLBU_ALLOC_START_ADDR ;
 int LIMA_GP_VSCL_END_ADDR ;
 int LIMA_GP_VSCL_START_ADDR ;

__attribute__((used)) static int lima_gp_task_validate(struct lima_sched_pipe *pipe,
     struct lima_sched_task *task)
{
 struct drm_lima_gp_frame *frame = task->frame;
 u32 *f = frame->frame;
 (void)pipe;

 if (f[LIMA_GP_VSCL_START_ADDR >> 2] >
     f[LIMA_GP_VSCL_END_ADDR >> 2] ||
     f[LIMA_GP_PLBUCL_START_ADDR >> 2] >
     f[LIMA_GP_PLBUCL_END_ADDR >> 2] ||
     f[LIMA_GP_PLBU_ALLOC_START_ADDR >> 2] >
     f[LIMA_GP_PLBU_ALLOC_END_ADDR >> 2])
  return -EINVAL;

 if (f[LIMA_GP_VSCL_START_ADDR >> 2] ==
     f[LIMA_GP_VSCL_END_ADDR >> 2] &&
     f[LIMA_GP_PLBUCL_START_ADDR >> 2] ==
     f[LIMA_GP_PLBUCL_END_ADDR >> 2])
  return -EINVAL;

 return 0;
}
