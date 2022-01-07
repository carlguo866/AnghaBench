
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_11__ {unsigned int page_start; unsigned int page_end; int last_decoded_sample; } ;
struct TYPE_12__ {int total_samples; int stream_len; int first_audio_page_offset; TYPE_1__ p_last; void* error; } ;
typedef TYPE_2__ stb_vorbis ;


 scalar_t__ IS_PUSH_MODE (TYPE_2__*) ;
 int SAMPLE_unknown ;
 void* VORBIS_cant_find_last_page ;
 int VORBIS_invalid_api_mixing ;
 unsigned int error (TYPE_2__*,int ) ;
 int get32 (TYPE_2__*) ;
 int getn (TYPE_2__*,unsigned char*,int) ;
 int set_file_offset (TYPE_2__*,unsigned int) ;
 unsigned int stb_vorbis_get_file_offset (TYPE_2__*) ;
 int vorbis_find_page (TYPE_2__*,unsigned int*,unsigned int*) ;

unsigned int stb_vorbis_stream_length_in_samples(stb_vorbis *f)
{
   unsigned int restore_offset, previous_safe;
   unsigned int end, last_page_loc;

   if (IS_PUSH_MODE(f)) return error(f, VORBIS_invalid_api_mixing);
   if (!f->total_samples) {
      unsigned int last;
      uint32 lo,hi;
      char header[6];


      restore_offset = stb_vorbis_get_file_offset(f);



      if (f->stream_len >= 65536 && f->stream_len-65536 >= f->first_audio_page_offset)
         previous_safe = f->stream_len - 65536;
      else
         previous_safe = f->first_audio_page_offset;

      set_file_offset(f, previous_safe);



      if (!vorbis_find_page(f, &end, &last)) {

         f->error = VORBIS_cant_find_last_page;
         f->total_samples = 0xffffffff;
         goto done;
      }


      last_page_loc = stb_vorbis_get_file_offset(f);




      while (!last) {
         set_file_offset(f, end);
         if (!vorbis_find_page(f, &end, &last)) {


            break;
         }
         previous_safe = last_page_loc+1;
         last_page_loc = stb_vorbis_get_file_offset(f);
      }

      set_file_offset(f, last_page_loc);


      getn(f, (unsigned char *)header, 6);

      lo = get32(f);
      hi = get32(f);
      if (lo == 0xffffffff && hi == 0xffffffff) {
         f->error = VORBIS_cant_find_last_page;
         f->total_samples = SAMPLE_unknown;
         goto done;
      }
      if (hi)
         lo = 0xfffffffe;
      f->total_samples = lo;

      f->p_last.page_start = last_page_loc;
      f->p_last.page_end = end;
      f->p_last.last_decoded_sample = lo;

     done:
      set_file_offset(f, restore_offset);
   }
   return f->total_samples == SAMPLE_unknown ? 0 : f->total_samples;
}
