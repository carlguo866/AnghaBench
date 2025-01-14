
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_pipe {int dummy; } ;
struct vx_core {int dummy; } ;
struct snd_pcm_runtime {int channels; int rate; int format; } ;


 int EINVAL ;
 unsigned int HEADER_FMT_16BITS ;
 unsigned int HEADER_FMT_24BITS ;
 unsigned int HEADER_FMT_BASE ;
 unsigned int HEADER_FMT_INTEL ;
 unsigned int HEADER_FMT_MONO ;
 unsigned int HEADER_FMT_UPTO11 ;
 unsigned int HEADER_FMT_UPTO32 ;
 int snd_BUG () ;
 scalar_t__ snd_pcm_format_little_endian (int ) ;
 int snd_pcm_format_physical_width (int ) ;
 int vx_set_stream_format (struct vx_core*,struct vx_pipe*,unsigned int) ;

__attribute__((used)) static int vx_set_format(struct vx_core *chip, struct vx_pipe *pipe,
    struct snd_pcm_runtime *runtime)
{
 unsigned int header = HEADER_FMT_BASE;

 if (runtime->channels == 1)
  header |= HEADER_FMT_MONO;
 if (snd_pcm_format_little_endian(runtime->format))
  header |= HEADER_FMT_INTEL;
 if (runtime->rate < 32000 && runtime->rate > 11025)
  header |= HEADER_FMT_UPTO32;
 else if (runtime->rate <= 11025)
  header |= HEADER_FMT_UPTO11;

 switch (snd_pcm_format_physical_width(runtime->format)) {

 case 16: header |= HEADER_FMT_16BITS; break;
 case 24: header |= HEADER_FMT_24BITS; break;
 default :
  snd_BUG();
  return -EINVAL;
        };

 return vx_set_stream_format(chip, pipe, header);
}
