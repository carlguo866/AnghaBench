
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct media_link {TYPE_2__* source; } ;
struct iss_pipeline {int external; } ;
struct TYPE_3__ {int entity; } ;
struct iss_csi2_device {TYPE_1__ subdev; } ;
struct TYPE_4__ {int entity; } ;


 int media_entity_to_v4l2_subdev (int ) ;
 int omap4iss_get_external_info (struct iss_pipeline*,struct media_link*) ;
 struct iss_pipeline* to_iss_pipeline (int *) ;
 struct iss_csi2_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_subdev_link_validate_default (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int csi2_link_validate(struct v4l2_subdev *sd, struct media_link *link,
         struct v4l2_subdev_format *source_fmt,
         struct v4l2_subdev_format *sink_fmt)
{
 struct iss_csi2_device *csi2 = v4l2_get_subdevdata(sd);
 struct iss_pipeline *pipe = to_iss_pipeline(&csi2->subdev.entity);
 int rval;

 pipe->external = media_entity_to_v4l2_subdev(link->source->entity);
 rval = omap4iss_get_external_info(pipe, link);
 if (rval < 0)
  return rval;

 return v4l2_subdev_link_validate_default(sd, link, source_fmt,
       sink_fmt);
}
