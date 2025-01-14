
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {struct media_pad* pads; } ;


 int MEDIA_PAD_FL_SOURCE ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;

__attribute__((used)) static struct media_entity *fimc_pipeline_get_head(struct media_entity *me)
{
 struct media_pad *pad = &me->pads[0];

 while (!(pad->flags & MEDIA_PAD_FL_SOURCE)) {
  pad = media_entity_remote_pad(pad);
  if (!pad)
   break;
  me = pad->entity;
  pad = &me->pads[0];
 }

 return me;
}
