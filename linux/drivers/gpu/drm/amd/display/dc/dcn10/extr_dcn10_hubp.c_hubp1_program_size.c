
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct plane_size {scalar_t__ chroma_pitch; scalar_t__ surface_pitch; } ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;
struct dc_plane_dcc_param {scalar_t__ meta_pitch; scalar_t__ meta_pitch_c; int enable; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;


 int ASSERT (int) ;
 int DCSURF_SURFACE_PITCH ;
 int DCSURF_SURFACE_PITCH_C ;
 int META_PITCH ;
 int META_PITCH_C ;
 int PITCH ;
 int PITCH_C ;
 int REG_UPDATE_2 (int ,int ,scalar_t__,int ,scalar_t__) ;
 int SURFACE_PIXEL_FORMAT_SUBSAMPLE_END ;
 int SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

void hubp1_program_size(
 struct hubp *hubp,
 enum surface_pixel_format format,
 const struct plane_size *plane_size,
 struct dc_plane_dcc_param *dcc)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);
 uint32_t pitch, meta_pitch, pitch_c, meta_pitch_c;




 if (format >= SURFACE_PIXEL_FORMAT_VIDEO_BEGIN && format < SURFACE_PIXEL_FORMAT_SUBSAMPLE_END) {
  ASSERT(plane_size->chroma_pitch != 0);


  pitch = plane_size->surface_pitch - 1;
  meta_pitch = dcc->meta_pitch - 1;
  pitch_c = plane_size->chroma_pitch - 1;
  meta_pitch_c = dcc->meta_pitch_c - 1;
 } else {
  pitch = plane_size->surface_pitch - 1;
  meta_pitch = dcc->meta_pitch - 1;
  pitch_c = 0;
  meta_pitch_c = 0;
 }

 if (!dcc->enable) {
  meta_pitch = 0;
  meta_pitch_c = 0;
 }

 REG_UPDATE_2(DCSURF_SURFACE_PITCH,
   PITCH, pitch, META_PITCH, meta_pitch);

 if (format >= SURFACE_PIXEL_FORMAT_VIDEO_BEGIN)
  REG_UPDATE_2(DCSURF_SURFACE_PITCH_C,
   PITCH_C, pitch_c, META_PITCH_C, meta_pitch_c);
}
