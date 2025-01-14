
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_ccdc_device {int update; } ;


 int OMAP3ISP_CCDC_ALAW ;
 int OMAP3ISP_CCDC_BCOMP ;
 int OMAP3ISP_CCDC_BLCLAMP ;
 int OMAP3ISP_CCDC_LPF ;
 int ccdc_configure_alaw (struct isp_ccdc_device*) ;
 int ccdc_configure_black_comp (struct isp_ccdc_device*) ;
 int ccdc_configure_clamp (struct isp_ccdc_device*) ;
 int ccdc_configure_lpf (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_apply_controls(struct isp_ccdc_device *ccdc)
{
 if (ccdc->update & OMAP3ISP_CCDC_ALAW) {
  ccdc_configure_alaw(ccdc);
  ccdc->update &= ~OMAP3ISP_CCDC_ALAW;
 }

 if (ccdc->update & OMAP3ISP_CCDC_LPF) {
  ccdc_configure_lpf(ccdc);
  ccdc->update &= ~OMAP3ISP_CCDC_LPF;
 }

 if (ccdc->update & OMAP3ISP_CCDC_BLCLAMP) {
  ccdc_configure_clamp(ccdc);
  ccdc->update &= ~OMAP3ISP_CCDC_BLCLAMP;
 }

 if (ccdc->update & OMAP3ISP_CCDC_BCOMP) {
  ccdc_configure_black_comp(ccdc);
  ccdc->update &= ~OMAP3ISP_CCDC_BCOMP;
 }
}
