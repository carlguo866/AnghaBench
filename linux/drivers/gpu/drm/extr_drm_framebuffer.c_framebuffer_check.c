
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u64 ;
struct drm_mode_fb_cmd2 {int width; int height; int* modifier; int* pitches; scalar_t__* offsets; int flags; scalar_t__* handles; int pixel_format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_format_info {int num_planes; unsigned int* char_per_block; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int,...) ;
 int DRM_FORMAT_MOD_LINEAR ;

 int DRM_FORMAT_NV12 ;
 int DRM_MODE_FB_MODIFIERS ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ UINT_MAX ;
 struct drm_format_info* __drm_format_info (int ) ;
 scalar_t__ drm_format_info_min_pitch (struct drm_format_info const*,int,unsigned int) ;
 struct drm_format_info* drm_get_format_info (struct drm_device*,struct drm_mode_fb_cmd2 const*) ;
 int drm_get_format_name (int ,struct drm_format_name_buf*) ;
 unsigned int fb_plane_height (int,struct drm_format_info const*,int) ;
 unsigned int fb_plane_width (int,struct drm_format_info const*,int) ;

__attribute__((used)) static int framebuffer_check(struct drm_device *dev,
        const struct drm_mode_fb_cmd2 *r)
{
 const struct drm_format_info *info;
 int i;


 info = __drm_format_info(r->pixel_format);
 if (!info) {
  struct drm_format_name_buf format_name;

  DRM_DEBUG_KMS("bad framebuffer format %s\n",
         drm_get_format_name(r->pixel_format,
        &format_name));
  return -EINVAL;
 }


 info = drm_get_format_info(dev, r);

 if (r->width == 0) {
  DRM_DEBUG_KMS("bad framebuffer width %u\n", r->width);
  return -EINVAL;
 }

 if (r->height == 0) {
  DRM_DEBUG_KMS("bad framebuffer height %u\n", r->height);
  return -EINVAL;
 }

 for (i = 0; i < info->num_planes; i++) {
  unsigned int width = fb_plane_width(r->width, info, i);
  unsigned int height = fb_plane_height(r->height, info, i);
  unsigned int block_size = info->char_per_block[i];
  u64 min_pitch = drm_format_info_min_pitch(info, i, width);

  if (!block_size && (r->modifier[i] == DRM_FORMAT_MOD_LINEAR)) {
   DRM_DEBUG_KMS("Format requires non-linear modifier for plane %d\n", i);
   return -EINVAL;
  }

  if (!r->handles[i]) {
   DRM_DEBUG_KMS("no buffer object handle for plane %d\n", i);
   return -EINVAL;
  }

  if (min_pitch > UINT_MAX)
   return -ERANGE;

  if ((uint64_t) height * r->pitches[i] + r->offsets[i] > UINT_MAX)
   return -ERANGE;

  if (block_size && r->pitches[i] < min_pitch) {
   DRM_DEBUG_KMS("bad pitch %u for plane %d\n", r->pitches[i], i);
   return -EINVAL;
  }

  if (r->modifier[i] && !(r->flags & DRM_MODE_FB_MODIFIERS)) {
   DRM_DEBUG_KMS("bad fb modifier %llu for plane %d\n",
          r->modifier[i], i);
   return -EINVAL;
  }

  if (r->flags & DRM_MODE_FB_MODIFIERS &&
      r->modifier[i] != r->modifier[0]) {
   DRM_DEBUG_KMS("bad fb modifier %llu for plane %d\n",
          r->modifier[i], i);
   return -EINVAL;
  }


  switch (r->modifier[i]) {
  case 128:



   if (r->pixel_format != DRM_FORMAT_NV12 ||
     width % 128 || height % 32 ||
     r->pitches[i] % 128) {
    DRM_DEBUG_KMS("bad modifier data for plane %d\n", i);
    return -EINVAL;
   }
   break;

  default:
   break;
  }
 }

 for (i = info->num_planes; i < 4; i++) {
  if (r->modifier[i]) {
   DRM_DEBUG_KMS("non-zero modifier for unused plane %d\n", i);
   return -EINVAL;
  }


  if (!(r->flags & DRM_MODE_FB_MODIFIERS))
   continue;

  if (r->handles[i]) {
   DRM_DEBUG_KMS("buffer object handle for unused plane %d\n", i);
   return -EINVAL;
  }

  if (r->pitches[i]) {
   DRM_DEBUG_KMS("non-zero pitch for unused plane %d\n", i);
   return -EINVAL;
  }

  if (r->offsets[i]) {
   DRM_DEBUG_KMS("non-zero offset for unused plane %d\n", i);
   return -EINVAL;
  }
 }

 return 0;
}
