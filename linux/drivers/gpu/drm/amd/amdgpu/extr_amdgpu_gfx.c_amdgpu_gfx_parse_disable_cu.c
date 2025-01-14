
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,unsigned int,unsigned int,unsigned int) ;
 char* amdgpu_disable_cu ;
 int memset (unsigned int*,int ,int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*) ;
 char* strchr (char const*,char) ;

void amdgpu_gfx_parse_disable_cu(unsigned *mask, unsigned max_se, unsigned max_sh)
{
 unsigned se, sh, cu;
 const char *p;

 memset(mask, 0, sizeof(*mask) * max_se * max_sh);

 if (!amdgpu_disable_cu || !*amdgpu_disable_cu)
  return;

 p = amdgpu_disable_cu;
 for (;;) {
  char *next;
  int ret = sscanf(p, "%u.%u.%u", &se, &sh, &cu);
  if (ret < 3) {
   DRM_ERROR("amdgpu: could not parse disable_cu\n");
   return;
  }

  if (se < max_se && sh < max_sh && cu < 16) {
   DRM_INFO("amdgpu: disabling CU %u.%u.%u\n", se, sh, cu);
   mask[se * max_sh + sh] |= 1u << cu;
  } else {
   DRM_ERROR("amdgpu: disable_cu %u.%u.%u is out of range\n",
      se, sh, cu);
  }

  next = strchr(p, ',');
  if (!next)
   break;
  p = next + 1;
 }
}
