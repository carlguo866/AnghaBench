
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;
struct drm_display_mode {int clock; int flags; } ;


 int CH7xxx_IDF ;
 int CH7xxx_IDF_HSP ;
 int CH7xxx_IDF_VSP ;
 int CH7xxx_TCT ;
 int CH7xxx_TCTL ;
 int CH7xxx_TLPF ;
 int CH7xxx_TPCP ;
 int CH7xxx_TPD ;
 int CH7xxx_TPVT ;
 int CH7xxx_TVCO ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int ch7xxx_readb (struct intel_dvo_device*,int ,int*) ;
 int ch7xxx_writeb (struct intel_dvo_device*,int ,int) ;

__attribute__((used)) static void ch7xxx_mode_set(struct intel_dvo_device *dvo,
       const struct drm_display_mode *mode,
       const struct drm_display_mode *adjusted_mode)
{
 u8 tvco, tpcp, tpd, tlpf, idf;

 if (mode->clock <= 65000) {
  tvco = 0x23;
  tpcp = 0x08;
  tpd = 0x16;
  tlpf = 0x60;
 } else {
  tvco = 0x2d;
  tpcp = 0x06;
  tpd = 0x26;
  tlpf = 0xa0;
 }

 ch7xxx_writeb(dvo, CH7xxx_TCTL, 0x00);
 ch7xxx_writeb(dvo, CH7xxx_TVCO, tvco);
 ch7xxx_writeb(dvo, CH7xxx_TPCP, tpcp);
 ch7xxx_writeb(dvo, CH7xxx_TPD, tpd);
 ch7xxx_writeb(dvo, CH7xxx_TPVT, 0x30);
 ch7xxx_writeb(dvo, CH7xxx_TLPF, tlpf);
 ch7xxx_writeb(dvo, CH7xxx_TCT, 0x00);

 ch7xxx_readb(dvo, CH7xxx_IDF, &idf);

 idf &= ~(CH7xxx_IDF_HSP | CH7xxx_IDF_VSP);
 if (mode->flags & DRM_MODE_FLAG_PHSYNC)
  idf |= CH7xxx_IDF_HSP;

 if (mode->flags & DRM_MODE_FLAG_PVSYNC)
  idf |= CH7xxx_IDF_VSP;

 ch7xxx_writeb(dvo, CH7xxx_IDF, idf);
}
