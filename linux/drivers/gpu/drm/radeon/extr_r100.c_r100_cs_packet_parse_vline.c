
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* ptr; } ;
struct radeon_cs_parser {scalar_t__ idx; int filp; TYPE_2__* rdev; TYPE_1__ ib; } ;
struct radeon_cs_packet {scalar_t__ reg; scalar_t__ count; int idx; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_crtc {int enabled; } ;
struct TYPE_4__ {int ddev; } ;



 int AVIVO_D2MODE_VLINE_START_END ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int ENOENT ;
 int PACKET2 (int ) ;
 int R100_CP_PACKET0_GET_REG (int) ;
 int R300_CP_PACKET0_REG_MASK ;
 int RADEON_CRTC2_GUI_TRIG_VLINE ;

 int volatile RADEON_ENG_DISPLAY_SELECT_CRTC1 ;
 int RADEON_WAIT_CRTC_VLINE ;
 scalar_t__ RADEON_WAIT_UNTIL ;
 struct drm_crtc* drm_crtc_find (int ,int ,int) ;
 int radeon_cs_packet_parse (struct radeon_cs_parser*,struct radeon_cs_packet*,scalar_t__) ;
 int radeon_get_ib_value (struct radeon_cs_parser*,int) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

int r100_cs_packet_parse_vline(struct radeon_cs_parser *p)
{
 struct drm_crtc *crtc;
 struct radeon_crtc *radeon_crtc;
 struct radeon_cs_packet p3reloc, waitreloc;
 int crtc_id;
 int r;
 uint32_t header, h_idx, reg;
 volatile uint32_t *ib;

 ib = p->ib.ptr;


 r = radeon_cs_packet_parse(p, &waitreloc, p->idx);
 if (r)
  return r;


 if (waitreloc.reg != RADEON_WAIT_UNTIL ||
     waitreloc.count != 0) {
  DRM_ERROR("vline wait had illegal wait until segment\n");
  return -EINVAL;
 }

 if (radeon_get_ib_value(p, waitreloc.idx + 1) != RADEON_WAIT_CRTC_VLINE) {
  DRM_ERROR("vline wait had illegal wait until\n");
  return -EINVAL;
 }


 r = radeon_cs_packet_parse(p, &p3reloc, p->idx + waitreloc.count + 2);
 if (r)
  return r;

 h_idx = p->idx - 2;
 p->idx += waitreloc.count + 2;
 p->idx += p3reloc.count + 2;

 header = radeon_get_ib_value(p, h_idx);
 crtc_id = radeon_get_ib_value(p, h_idx + 5);
 reg = R100_CP_PACKET0_GET_REG(header);
 crtc = drm_crtc_find(p->rdev->ddev, p->filp, crtc_id);
 if (!crtc) {
  DRM_ERROR("cannot find crtc %d\n", crtc_id);
  return -ENOENT;
 }
 radeon_crtc = to_radeon_crtc(crtc);
 crtc_id = radeon_crtc->crtc_id;

 if (!crtc->enabled) {

  ib[h_idx + 2] = PACKET2(0);
  ib[h_idx + 3] = PACKET2(0);
 } else if (crtc_id == 1) {
  switch (reg) {
  case 129:
   header &= ~R300_CP_PACKET0_REG_MASK;
   header |= AVIVO_D2MODE_VLINE_START_END >> 2;
   break;
  case 128:
   header &= ~R300_CP_PACKET0_REG_MASK;
   header |= RADEON_CRTC2_GUI_TRIG_VLINE >> 2;
   break;
  default:
   DRM_ERROR("unknown crtc reloc\n");
   return -EINVAL;
  }
  ib[h_idx] = header;
  ib[h_idx + 3] |= RADEON_ENG_DISPLAY_SELECT_CRTC1;
 }

 return 0;
}
