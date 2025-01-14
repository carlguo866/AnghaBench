
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vbva_query_mode_hints {unsigned int hints_queried_count; int hint_structure_guest_size; scalar_t__ rc; } ;
struct vbva_modehint {int dummy; } ;
struct gen_pool {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int HGSMI_CH_VBVA ;
 int VBVA_QUERY_MODE_HINTS ;
 scalar_t__ VERR_NOT_SUPPORTED ;
 scalar_t__ WARN_ON (int) ;
 struct vbva_query_mode_hints* hgsmi_buffer_alloc (struct gen_pool*,int,int ,int ) ;
 int hgsmi_buffer_free (struct gen_pool*,struct vbva_query_mode_hints*) ;
 int hgsmi_buffer_submit (struct gen_pool*,struct vbva_query_mode_hints*) ;
 int memcpy (struct vbva_modehint*,int *,size_t) ;

int hgsmi_get_mode_hints(struct gen_pool *ctx, unsigned int screens,
    struct vbva_modehint *hints)
{
 struct vbva_query_mode_hints *p;
 size_t size;

 if (WARN_ON(!hints))
  return -EINVAL;

 size = screens * sizeof(struct vbva_modehint);
 p = hgsmi_buffer_alloc(ctx, sizeof(*p) + size, HGSMI_CH_VBVA,
          VBVA_QUERY_MODE_HINTS);
 if (!p)
  return -ENOMEM;

 p->hints_queried_count = screens;
 p->hint_structure_guest_size = sizeof(struct vbva_modehint);
 p->rc = VERR_NOT_SUPPORTED;

 hgsmi_buffer_submit(ctx, p);

 if (p->rc < 0) {
  hgsmi_buffer_free(ctx, p);
  return -EIO;
 }

 memcpy(hints, ((u8 *)p) + sizeof(struct vbva_query_mode_hints), size);
 hgsmi_buffer_free(ctx, p);

 return 0;
}
