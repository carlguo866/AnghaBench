
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_17__ {unsigned int last_decoded_sample; int page_end; int page_start; } ;
struct TYPE_16__ {int blocksize_1; int blocksize_0; int end_seg_with_known_loc; int* segments; int page_flag; int segment_count; int next_seg; scalar_t__ current_loc; scalar_t__ previous_length; scalar_t__ bytes_in_seg; scalar_t__ packet_bytes; scalar_t__ valid_bits; void* last_seg; void* current_loc_valid; TYPE_2__ p_last; TYPE_2__ p_first; } ;
typedef TYPE_1__ stb_vorbis ;
typedef TYPE_2__ ProbedPage ;


 void* FALSE ;
 int PAGEFLAG_continued_packet ;
 int VORBIS_seek_failed ;
 int VORBIS_seek_invalid ;
 int VORBIS_seek_without_length ;
 int assert (int) ;
 int error (TYPE_1__*,int ) ;
 int get_seek_page_info (TYPE_1__*,TYPE_2__*) ;
 int go_to_page_before (TYPE_1__*,int) ;
 int set_file_offset (TYPE_1__*,int) ;
 int skip (TYPE_1__*,int) ;
 int start_page (TYPE_1__*) ;
 int stb_vorbis_get_file_offset (TYPE_1__*) ;
 scalar_t__ stb_vorbis_seek_start (TYPE_1__*) ;
 scalar_t__ stb_vorbis_stream_length_in_samples (TYPE_1__*) ;
 int vorbis_find_page (TYPE_1__*,int *,int *) ;
 int vorbis_pump_first_frame (TYPE_1__*) ;

__attribute__((used)) static int seek_to_sample_coarse(stb_vorbis *f, uint32 sample_number)
{
   ProbedPage left, right, mid;
   int i, start_seg_with_known_loc, end_pos, page_start;
   uint32 delta, stream_length, padding;
   double offset, bytes_per_sample;
   int probe = 0;


   stream_length = stb_vorbis_stream_length_in_samples(f);
   if (stream_length == 0) return error(f, VORBIS_seek_without_length);
   if (sample_number > stream_length) return error(f, VORBIS_seek_invalid);




   padding = ((f->blocksize_1 - f->blocksize_0) >> 2);
   if (sample_number < padding)
      sample_number = 0;
   else
      sample_number -= padding;

   left = f->p_first;
   while (left.last_decoded_sample == ~0U) {

      set_file_offset(f, left.page_end);
      if (!get_seek_page_info(f, &left)) goto error;
   }

   right = f->p_last;
   assert(right.last_decoded_sample != ~0U);


   if (sample_number <= left.last_decoded_sample) {
      if (stb_vorbis_seek_start(f))
         return 1;
      return 0;
   }

   while (left.page_end != right.page_start) {
      assert(left.page_end < right.page_start);

      delta = right.page_start - left.page_end;
      if (delta <= 65536) {

         set_file_offset(f, left.page_end);
      } else {
         if (probe < 2) {
            if (probe == 0) {

               double data_bytes = right.page_end - left.page_start;
               bytes_per_sample = data_bytes / right.last_decoded_sample;
               offset = left.page_start + bytes_per_sample * (sample_number - left.last_decoded_sample);
            } else {

               double error = ((double) sample_number - mid.last_decoded_sample) * bytes_per_sample;
               if (error >= 0 && error < 8000) error = 8000;
               if (error < 0 && error > -8000) error = -8000;
               offset += error * 2;
            }


            if (offset < left.page_end)
               offset = left.page_end;
            if (offset > right.page_start - 65536)
               offset = right.page_start - 65536;

            set_file_offset(f, (unsigned int) offset);
         } else {


            set_file_offset(f, left.page_end + (delta / 2) - 32768);
         }

         if (!vorbis_find_page(f, ((void*)0), ((void*)0))) goto error;
      }

      for (;;) {
         if (!get_seek_page_info(f, &mid)) goto error;
         if (mid.last_decoded_sample != ~0U) break;

         set_file_offset(f, mid.page_end);
         assert(mid.page_start < right.page_start);
      }



      if (mid.page_start == right.page_start)
         break;

      if (sample_number < mid.last_decoded_sample)
         right = mid;
      else
         left = mid;

      ++probe;
   }


   page_start = left.page_start;
   set_file_offset(f, page_start);
   if (!start_page(f)) return error(f, VORBIS_seek_failed);
   end_pos = f->end_seg_with_known_loc;
   assert(end_pos >= 0);

   for (;;) {
      for (i = end_pos; i > 0; --i)
         if (f->segments[i-1] != 255)
            break;

      start_seg_with_known_loc = i;

      if (start_seg_with_known_loc > 0 || !(f->page_flag & PAGEFLAG_continued_packet))
         break;


      if (!go_to_page_before(f, page_start))
         goto error;

      page_start = stb_vorbis_get_file_offset(f);
      if (!start_page(f)) goto error;
      end_pos = f->segment_count - 1;
   }


   f->current_loc_valid = FALSE;
   f->last_seg = FALSE;
   f->valid_bits = 0;
   f->packet_bytes = 0;
   f->bytes_in_seg = 0;
   f->previous_length = 0;
   f->next_seg = start_seg_with_known_loc;

   for (i = 0; i < start_seg_with_known_loc; i++)
      skip(f, f->segments[i]);


   if (!vorbis_pump_first_frame(f))
      return 0;
   if (f->current_loc > sample_number)
      return error(f, VORBIS_seek_failed);
   return 1;

error:

   stb_vorbis_seek_start(f);
   return error(f, VORBIS_seek_failed);
}
