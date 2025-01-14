
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdlcd_drm_private {int dummy; } ;
struct drm_crtc {int dummy; } ;


 unsigned int HDLCD_INTERRUPT_VSYNC ;
 int HDLCD_REG_INT_MASK ;
 struct hdlcd_drm_private* crtc_to_hdlcd_priv (struct drm_crtc*) ;
 unsigned int hdlcd_read (struct hdlcd_drm_private*,int ) ;
 int hdlcd_write (struct hdlcd_drm_private*,int ,unsigned int) ;

__attribute__((used)) static int hdlcd_crtc_enable_vblank(struct drm_crtc *crtc)
{
 struct hdlcd_drm_private *hdlcd = crtc_to_hdlcd_priv(crtc);
 unsigned int mask = hdlcd_read(hdlcd, HDLCD_REG_INT_MASK);

 hdlcd_write(hdlcd, HDLCD_REG_INT_MASK, mask | HDLCD_INTERRUPT_VSYNC);

 return 0;
}
