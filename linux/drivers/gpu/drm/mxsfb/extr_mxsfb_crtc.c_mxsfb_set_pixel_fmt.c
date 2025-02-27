
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct drm_crtc {TYPE_5__* primary; struct drm_device* dev; } ;
struct TYPE_6__ {struct drm_crtc crtc; } ;
struct mxsfb_drm_private {scalar_t__ base; TYPE_1__ pipe; } ;
struct drm_device {int dev; } ;
struct TYPE_10__ {TYPE_4__* state; } ;
struct TYPE_9__ {TYPE_3__* fb; } ;
struct TYPE_8__ {TYPE_2__* format; } ;
struct TYPE_7__ {int format; } ;


 int CTRL1_CUR_FRAME_DONE_IRQ ;
 int CTRL1_CUR_FRAME_DONE_IRQ_EN ;
 int CTRL1_SET_BYTE_PACKAGING (int) ;
 int CTRL_BYPASS_COUNT ;
 int CTRL_MASTER ;
 int CTRL_SET_WORD_LENGTH (int) ;


 int EINVAL ;
 scalar_t__ LCDC_CTRL ;
 scalar_t__ LCDC_CTRL1 ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int const) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxsfb_set_pixel_fmt(struct mxsfb_drm_private *mxsfb)
{
 struct drm_crtc *crtc = &mxsfb->pipe.crtc;
 struct drm_device *drm = crtc->dev;
 const u32 format = crtc->primary->state->fb->format->format;
 u32 ctrl, ctrl1;

 ctrl = CTRL_BYPASS_COUNT | CTRL_MASTER;
 ctrl1 = readl(mxsfb->base + LCDC_CTRL1);
 ctrl1 &= CTRL1_CUR_FRAME_DONE_IRQ_EN | CTRL1_CUR_FRAME_DONE_IRQ;

 switch (format) {
 case 129:
  dev_dbg(drm->dev, "Setting up RGB565 mode\n");
  ctrl |= CTRL_SET_WORD_LENGTH(0);
  ctrl1 |= CTRL1_SET_BYTE_PACKAGING(0xf);
  break;
 case 128:
  dev_dbg(drm->dev, "Setting up XRGB8888 mode\n");
  ctrl |= CTRL_SET_WORD_LENGTH(3);

  ctrl1 |= CTRL1_SET_BYTE_PACKAGING(0x7);
  break;
 default:
  dev_err(drm->dev, "Unhandled pixel format %08x\n", format);
  return -EINVAL;
 }

 writel(ctrl1, mxsfb->base + LCDC_CTRL1);
 writel(ctrl, mxsfb->base + LCDC_CTRL);

 return 0;
}
