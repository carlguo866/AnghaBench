
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {int atom_context; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct radeon_crtc {int h_border; int v_border; int crtc_id; } ;
struct drm_display_mode {int flags; scalar_t__ crtc_vsync_start; scalar_t__ crtc_vsync_end; scalar_t__ crtc_vdisplay; scalar_t__ crtc_hsync_start; scalar_t__ crtc_hsync_end; scalar_t__ crtc_hdisplay; scalar_t__ crtc_vblank_end; scalar_t__ crtc_hblank_end; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef int args ;
struct TYPE_5__ {void* usAccess; } ;
struct TYPE_7__ {int ucH_Border; int ucV_Border; int ucCRTC; TYPE_1__ susModeMiscInfo; void* usV_SyncWidth; void* usV_SyncOffset; void* usH_SyncWidth; void* usH_SyncOffset; void* usV_Blanking_Time; void* usV_Size; void* usH_Blanking_Time; void* usH_Size; } ;
typedef TYPE_3__ SET_CRTC_USING_DTD_TIMING_PARAMETERS ;


 scalar_t__ ATOM_COMPOSITESYNC ;
 scalar_t__ ATOM_DOUBLE_CLOCK_MODE ;
 scalar_t__ ATOM_HSYNC_POLARITY ;
 scalar_t__ ATOM_INTERLACE ;
 scalar_t__ ATOM_VSYNC_POLARITY ;
 int COMMAND ;
 int DRM_MODE_FLAG_CSYNC ;
 int DRM_MODE_FLAG_DBLSCAN ;
 int DRM_MODE_FLAG_INTERLACE ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SetCRTC_UsingDTDTiming ;
 int atom_execute_table (int ,int,int *) ;
 void* cpu_to_le16 (scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void
atombios_set_crtc_dtd_timing(struct drm_crtc *crtc,
        struct drm_display_mode *mode)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 SET_CRTC_USING_DTD_TIMING_PARAMETERS args;
 int index = GetIndexIntoMasterTable(COMMAND, SetCRTC_UsingDTDTiming);
 u16 misc = 0;

 memset(&args, 0, sizeof(args));
 args.usH_Size = cpu_to_le16(mode->crtc_hdisplay - (radeon_crtc->h_border * 2));
 args.usH_Blanking_Time =
  cpu_to_le16(mode->crtc_hblank_end - mode->crtc_hdisplay + (radeon_crtc->h_border * 2));
 args.usV_Size = cpu_to_le16(mode->crtc_vdisplay - (radeon_crtc->v_border * 2));
 args.usV_Blanking_Time =
  cpu_to_le16(mode->crtc_vblank_end - mode->crtc_vdisplay + (radeon_crtc->v_border * 2));
 args.usH_SyncOffset =
  cpu_to_le16(mode->crtc_hsync_start - mode->crtc_hdisplay + radeon_crtc->h_border);
 args.usH_SyncWidth =
  cpu_to_le16(mode->crtc_hsync_end - mode->crtc_hsync_start);
 args.usV_SyncOffset =
  cpu_to_le16(mode->crtc_vsync_start - mode->crtc_vdisplay + radeon_crtc->v_border);
 args.usV_SyncWidth =
  cpu_to_le16(mode->crtc_vsync_end - mode->crtc_vsync_start);
 args.ucH_Border = radeon_crtc->h_border;
 args.ucV_Border = radeon_crtc->v_border;

 if (mode->flags & DRM_MODE_FLAG_NVSYNC)
  misc |= ATOM_VSYNC_POLARITY;
 if (mode->flags & DRM_MODE_FLAG_NHSYNC)
  misc |= ATOM_HSYNC_POLARITY;
 if (mode->flags & DRM_MODE_FLAG_CSYNC)
  misc |= ATOM_COMPOSITESYNC;
 if (mode->flags & DRM_MODE_FLAG_INTERLACE)
  misc |= ATOM_INTERLACE;
 if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
  misc |= ATOM_DOUBLE_CLOCK_MODE;

 args.susModeMiscInfo.usAccess = cpu_to_le16(misc);
 args.ucCRTC = radeon_crtc->crtc_id;

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
