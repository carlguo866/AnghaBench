
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {int ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 struct intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;

__attribute__((used)) static struct edid *
intel_sdvo_get_edid(struct drm_connector *connector)
{
 struct intel_sdvo *sdvo = intel_attached_sdvo(connector);
 return drm_get_edid(connector, &sdvo->ddc);
}
