
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct intel_sdvo_enhancements_reply {int dummy; } ;
struct drm_connector {TYPE_4__* state; } ;
struct TYPE_7__ {struct drm_connector base; } ;
struct intel_sdvo_connector {TYPE_3__ base; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct intel_sdvo {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
struct TYPE_8__ {int tv; } ;


 int BRIGHTNESS ;
 int ENHANCEMENT (int *,int ,int ) ;
 int brightness ;

__attribute__((used)) static bool
intel_sdvo_create_enhance_property_lvds(struct intel_sdvo *intel_sdvo,
     struct intel_sdvo_connector *intel_sdvo_connector,
     struct intel_sdvo_enhancements_reply enhancements)
{
 struct drm_device *dev = intel_sdvo->base.base.dev;
 struct drm_connector *connector = &intel_sdvo_connector->base.base;
 u16 response, data_value[2];

 ENHANCEMENT(&connector->state->tv, brightness, BRIGHTNESS);

 return 1;
}
