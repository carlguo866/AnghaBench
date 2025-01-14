
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_media_pipe {int imgu_sd; } ;
struct imgu_device {TYPE_1__* pci_dev; struct imgu_media_pipe* imgu_pipe; } ;
struct TYPE_2__ {int dev; } ;


 int IMGU_MAX_PIPE_NUM ;
 int dev_err (int *,char*,int,int) ;
 int imgu_v4l2_cleanup_pipes (struct imgu_device*,int) ;
 int imgu_v4l2_nodes_setup_pipe (struct imgu_device*,int) ;
 int imgu_v4l2_subdev_cleanup (struct imgu_device*,int) ;
 int imgu_v4l2_subdev_register (struct imgu_device*,int *,int) ;

__attribute__((used)) static int imgu_v4l2_register_pipes(struct imgu_device *imgu)
{
 struct imgu_media_pipe *imgu_pipe;
 int i, r;

 for (i = 0; i < IMGU_MAX_PIPE_NUM; i++) {
  imgu_pipe = &imgu->imgu_pipe[i];
  r = imgu_v4l2_subdev_register(imgu, &imgu_pipe->imgu_sd, i);
  if (r) {
   dev_err(&imgu->pci_dev->dev,
    "failed to register subdev%u ret (%d)\n", i, r);
   goto pipes_cleanup;
  }
  r = imgu_v4l2_nodes_setup_pipe(imgu, i);
  if (r) {
   imgu_v4l2_subdev_cleanup(imgu, i);
   goto pipes_cleanup;
  }
 }

 return 0;

pipes_cleanup:
 imgu_v4l2_cleanup_pipes(imgu, i);
 return r;
}
