
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int subpixel_order; } ;
struct TYPE_12__ {TYPE_2__ display_info; scalar_t__ doublescan_allowed; scalar_t__ interlace_allowed; int connector_type; } ;
struct TYPE_10__ {TYPE_5__ base; int restore; int save; } ;
struct psb_intel_sdvo_connector {TYPE_3__ base; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
struct psb_intel_sdvo {TYPE_4__ base; } ;


 int SubPixelHorizontalRGB ;
 int drm_connector_helper_add (TYPE_5__*,int *) ;
 int drm_connector_init (int ,TYPE_5__*,int *,int ) ;
 int drm_connector_register (TYPE_5__*) ;
 int gma_connector_attach_encoder (TYPE_3__*,TYPE_4__*) ;
 int psb_intel_sdvo_connector_funcs ;
 int psb_intel_sdvo_connector_helper_funcs ;
 int psb_intel_sdvo_restore ;
 int psb_intel_sdvo_save ;

__attribute__((used)) static void
psb_intel_sdvo_connector_init(struct psb_intel_sdvo_connector *connector,
     struct psb_intel_sdvo *encoder)
{
 drm_connector_init(encoder->base.base.dev,
      &connector->base.base,
      &psb_intel_sdvo_connector_funcs,
      connector->base.base.connector_type);

 drm_connector_helper_add(&connector->base.base,
     &psb_intel_sdvo_connector_helper_funcs);

 connector->base.base.interlace_allowed = 0;
 connector->base.base.doublescan_allowed = 0;
 connector->base.base.display_info.subpixel_order = SubPixelHorizontalRGB;

 connector->base.save = psb_intel_sdvo_save;
 connector->base.restore = psb_intel_sdvo_restore;

 gma_connector_attach_encoder(&connector->base, &encoder->base);
 drm_connector_register(&connector->base.base);
}
