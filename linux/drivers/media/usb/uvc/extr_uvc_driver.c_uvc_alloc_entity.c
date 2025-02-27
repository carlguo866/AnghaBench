
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct uvc_entity {int type; unsigned int num_pads; unsigned int bNrInPins; TYPE_1__* pads; int * baSourceID; scalar_t__ num_links; int id; } ;
struct TYPE_2__ {int flags; } ;


 int GFP_KERNEL ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int UVC_ENTITY_IS_OTERM (struct uvc_entity*) ;
 int UVC_TERM_OUTPUT ;
 struct uvc_entity* kzalloc (unsigned int,int ) ;
 unsigned int roundup (unsigned int,int) ;

__attribute__((used)) static struct uvc_entity *uvc_alloc_entity(u16 type, u8 id,
  unsigned int num_pads, unsigned int extra_size)
{
 struct uvc_entity *entity;
 unsigned int num_inputs;
 unsigned int size;
 unsigned int i;

 extra_size = roundup(extra_size, sizeof(*entity->pads));
 num_inputs = (type & UVC_TERM_OUTPUT) ? num_pads : num_pads - 1;
 size = sizeof(*entity) + extra_size + sizeof(*entity->pads) * num_pads
      + num_inputs;
 entity = kzalloc(size, GFP_KERNEL);
 if (entity == ((void*)0))
  return ((void*)0);

 entity->id = id;
 entity->type = type;

 entity->num_links = 0;
 entity->num_pads = num_pads;
 entity->pads = ((void *)(entity + 1)) + extra_size;

 for (i = 0; i < num_inputs; ++i)
  entity->pads[i].flags = MEDIA_PAD_FL_SINK;
 if (!UVC_ENTITY_IS_OTERM(entity))
  entity->pads[num_pads-1].flags = MEDIA_PAD_FL_SOURCE;

 entity->bNrInPins = num_inputs;
 entity->baSourceID = (u8 *)(&entity->pads[num_pads]);

 return entity;
}
