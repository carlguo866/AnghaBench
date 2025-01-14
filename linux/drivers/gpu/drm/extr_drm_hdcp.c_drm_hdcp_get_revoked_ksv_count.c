
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ DRM_HDCP_KSV_LEN ;

__attribute__((used)) static u32 drm_hdcp_get_revoked_ksv_count(const u8 *buf, u32 vrls_length)
{
 u32 parsed_bytes = 0, ksv_count = 0, vrl_ksv_cnt, vrl_sz;

 while (parsed_bytes < vrls_length) {
  vrl_ksv_cnt = *buf;
  ksv_count += vrl_ksv_cnt;

  vrl_sz = (vrl_ksv_cnt * DRM_HDCP_KSV_LEN) + 1;
  buf += vrl_sz;
  parsed_bytes += vrl_sz;
 }





 if (parsed_bytes != vrls_length)
  ksv_count = 0;

 return ksv_count;
}
