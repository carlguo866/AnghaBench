
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int DRM_MODE_DPMS_ON ;
 int udl_crtc_dpms (struct drm_crtc*,int ) ;

__attribute__((used)) static void udl_crtc_commit(struct drm_crtc *crtc)
{
 udl_crtc_dpms(crtc, DRM_MODE_DPMS_ON);
}
