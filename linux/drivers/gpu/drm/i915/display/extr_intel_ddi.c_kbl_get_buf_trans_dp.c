
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct ddi_buf_trans {int dummy; } ;


 int ARRAY_SIZE (struct ddi_buf_trans const*) ;
 scalar_t__ IS_CFL_ULT (struct drm_i915_private*) ;
 scalar_t__ IS_CFL_ULX (struct drm_i915_private*) ;
 scalar_t__ IS_KBL_ULT (struct drm_i915_private*) ;
 scalar_t__ IS_KBL_ULX (struct drm_i915_private*) ;
 struct ddi_buf_trans const* kbl_ddi_translations_dp ;
 struct ddi_buf_trans const* kbl_u_ddi_translations_dp ;
 struct ddi_buf_trans const* kbl_y_ddi_translations_dp ;

__attribute__((used)) static const struct ddi_buf_trans *
kbl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
{
 if (IS_KBL_ULX(dev_priv) || IS_CFL_ULX(dev_priv)) {
  *n_entries = ARRAY_SIZE(kbl_y_ddi_translations_dp);
  return kbl_y_ddi_translations_dp;
 } else if (IS_KBL_ULT(dev_priv) || IS_CFL_ULT(dev_priv)) {
  *n_entries = ARRAY_SIZE(kbl_u_ddi_translations_dp);
  return kbl_u_ddi_translations_dp;
 } else {
  *n_entries = ARRAY_SIZE(kbl_ddi_translations_dp);
  return kbl_ddi_translations_dp;
 }
}
