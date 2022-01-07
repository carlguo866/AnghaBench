
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int bytes_in_seg; int packet_bytes; int next_seg; int segment_count; scalar_t__ valid_bits; TYPE_1__* mode_config; scalar_t__ mode_count; } ;
typedef TYPE_2__ vorb ;
struct TYPE_6__ {scalar_t__ blockflag; } ;


 int ilog (scalar_t__) ;
 int skip (TYPE_2__*,int) ;
 int vorbis_decode_initial (TYPE_2__*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int peek_decode_initial(vorb *f, int *p_left_start, int *p_left_end, int *p_right_start, int *p_right_end, int *mode)
{
   int bits_read, bytes_read;

   if (!vorbis_decode_initial(f, p_left_start, p_left_end, p_right_start, p_right_end, mode))
      return 0;


   bits_read = 1 + ilog(f->mode_count-1);
   if (f->mode_config[*mode].blockflag)
      bits_read += 2;
   bytes_read = (bits_read + 7) / 8;

   f->bytes_in_seg += bytes_read;
   f->packet_bytes -= bytes_read;
   skip(f, -bytes_read);
   if (f->next_seg == -1)
      f->next_seg = f->segment_count - 1;
   else
      f->next_seg--;
   f->valid_bits = 0;

   return 1;
}
