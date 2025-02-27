
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;


 int VD1_BLEND_SRC_CTRL ;
 int VD_BLEND_POSTBLD_PREMULT_EN ;
 int VD_BLEND_POSTBLD_SRC_VD1 ;
 int VD_BLEND_PREBLD_PREMULT_EN ;
 int VD_BLEND_PREBLD_SRC_VD1 ;
 scalar_t__ _REG (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void meson_g12a_crtc_enable_vd1(struct meson_drm *priv)
{
 writel_relaxed(VD_BLEND_PREBLD_SRC_VD1 |
         VD_BLEND_PREBLD_PREMULT_EN |
         VD_BLEND_POSTBLD_SRC_VD1 |
         VD_BLEND_POSTBLD_PREMULT_EN,
         priv->io_base + _REG(VD1_BLEND_SRC_CTRL));
}
