
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct media_graph {int dummy; } ;
struct TYPE_3__ {struct media_device* mdev; } ;
struct media_entity {TYPE_1__ graph_obj; } ;
struct media_device {int graph_mutex; } ;
struct TYPE_4__ {struct media_entity entity; } ;
struct isp_video {scalar_t__ type; TYPE_2__ video; } ;
struct isp_pipeline {struct isp_video* output; struct isp_video* input; int ent_enum; } ;


 int EPIPE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int is_media_entity_v4l2_video_device (struct media_entity*) ;
 int media_entity_enum_set (int *,struct media_entity*) ;
 int media_entity_to_video_device (struct media_entity*) ;
 int media_graph_walk_cleanup (struct media_graph*) ;
 int media_graph_walk_init (struct media_graph*,struct media_device*) ;
 struct media_entity* media_graph_walk_next (struct media_graph*) ;
 int media_graph_walk_start (struct media_graph*,struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isp_video* to_isp_video (int ) ;

__attribute__((used)) static int isp_video_get_graph_data(struct isp_video *video,
        struct isp_pipeline *pipe)
{
 struct media_graph graph;
 struct media_entity *entity = &video->video.entity;
 struct media_device *mdev = entity->graph_obj.mdev;
 struct isp_video *far_end = ((void*)0);
 int ret;

 mutex_lock(&mdev->graph_mutex);
 ret = media_graph_walk_init(&graph, mdev);
 if (ret) {
  mutex_unlock(&mdev->graph_mutex);
  return ret;
 }

 media_graph_walk_start(&graph, entity);

 while ((entity = media_graph_walk_next(&graph))) {
  struct isp_video *__video;

  media_entity_enum_set(&pipe->ent_enum, entity);

  if (far_end != ((void*)0))
   continue;

  if (entity == &video->video.entity)
   continue;

  if (!is_media_entity_v4l2_video_device(entity))
   continue;

  __video = to_isp_video(media_entity_to_video_device(entity));
  if (__video->type != video->type)
   far_end = __video;
 }

 mutex_unlock(&mdev->graph_mutex);

 media_graph_walk_cleanup(&graph);

 if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  pipe->input = far_end;
  pipe->output = video;
 } else {
  if (far_end == ((void*)0))
   return -EPIPE;

  pipe->input = video;
  pipe->output = far_end;
 }

 return 0;
}
